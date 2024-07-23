#include "denoiser.h"

Denoiser::Denoiser() : m_useTemportal(false) {}

void Denoiser::Reprojection(const FrameInfo &frameInfo) {
    int height = m_accColor.m_height;
    int width = m_accColor.m_width;
    Matrix4x4 preWorldToScreen =
        m_preFrameInfo.m_matrix[m_preFrameInfo.m_matrix.size() - 1];
    Matrix4x4 preWorldToCamera =
        m_preFrameInfo.m_matrix[m_preFrameInfo.m_matrix.size() - 2];
#pragma omp parallel for
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            // TODO: Reproject
            m_valid(x, y) = false;
            m_misc(x, y) = Float3(0.f);

            int id = frameInfo.m_id(x, y);
            if (id == -1) {
                continue;
            }
            Matrix4x4 world_to_local = Inverse(frameInfo.m_matrix[id]);
            auto pre_local_to_world = m_preFrameInfo.m_matrix[id];

            auto world_position = frameInfo.m_position(x, y);
            auto pre_local_position = world_to_local(world_position, Float3::EType::Point);
            auto pre_world_position = pre_local_to_world(pre_local_position, Float3::EType::Point);
            auto pre_screen_position = preWorldToScreen(pre_world_position, Float3::EType::Point);
            if (pre_screen_position.x < 0 || pre_screen_position.x >= width ||
            pre_screen_position.y < 0 || pre_screen_position.y >= height) {
                continue;
            } else {
                int pre_id = m_preFrameInfo.m_id(pre_screen_position.x, pre_screen_position.y);
                if (pre_id == id) {
                    m_valid(x, y) = true;
                    m_misc(x, y) = m_accColor(pre_screen_position.x, pre_screen_position.y);
                }
            }

        }
    }
    std::swap(m_misc, m_accColor);
}

void Denoiser::TemporalAccumulation(const Buffer2D<Float3> &curFilteredColor) {
    int height = m_accColor.m_height;
    int width = m_accColor.m_width;
    int kernelRadius = 3;
#pragma omp parallel for
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            // TODO: Temporal clamp
            Float3 color = m_accColor(x, y);
            // TODO: Exponential moving average
            float alpha = 1.0f;
            //对一个卷积核计算均值与方差，做clamp
            if (m_valid(x, y)) {
                alpha = m_alpha;
                float x_min = std::max(0, x - kernelRadius);
                float x_max = std::min(x + kernelRadius, width - 1);
                float y_min = std::max(0, y - kernelRadius);
                float y_max = std::min(y + kernelRadius, height - 1);

                Float3 mu = Float3(0.0);
                Float3 sigma = Float3(0.0);
                int count = 0;
                for (int m = x_min; m<= x_max; m++) {
                    for (int n = y_min; n<=y_min; n++) {
                        mu += curFilteredColor(m, n);
                        sigma += Sqr(curFilteredColor(m,n)-curFilteredColor(x,y));
                        count ++;
                    }
                }
                mu /= float(count);
                sigma = SafeSqrt(sigma / float(count));
                color = Clamp(color, mu - sigma * m_colorBoxK, mu + sigma * m_colorBoxK);
            }
            m_misc(x, y) = Lerp(color, curFilteredColor(x, y), alpha);
        }
    }
    std::swap(m_misc, m_accColor);
}

Buffer2D<Float3> Denoiser::Filter(const FrameInfo &frameInfo) {
    int height = frameInfo.m_beauty.m_height;
    int width = frameInfo.m_beauty.m_width;
    Buffer2D<Float3> filteredImage = CreateBuffer2D<Float3>(width, height);
    int kernelRadius = 16;
#pragma omp parallel for
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            // TODO: Joint bilateral filter
            // filteredImage(x, y) = frameInfo.m_beauty(x, y);
            auto center_normal = frameInfo.m_normal(x, y);
            auto center_depth = frameInfo.m_depth(x, y);
            auto center_position = frameInfo.m_position(x, y);
            auto center_color = frameInfo.m_beauty(x, y);

            float x_min = std::max(0, x - kernelRadius);
            float x_max = std::min(x + kernelRadius, width - 1);
            float y_min = std::max(0, y - kernelRadius);
            float y_max = std::min(y + kernelRadius, height - 1);

            Float3 final_color;
            float weight_sum = 0.0;
            for (int m = x_min; m <= x_max; m++) {
                for (int n = y_min; n <= y_max; n++) {
                    auto sample_normal = frameInfo.m_normal(m, n);
                    auto sample_depth = frameInfo.m_depth(m, n);
                    auto sample_position = frameInfo.m_position(m, n);
                    auto sample_color = frameInfo.m_beauty(m, n);

                    float d_position = SqrDistance(center_position,sample_position);
                    float position_item = - (d_position/(2.0*m_sigmaCoord*m_sigmaCoord));

                    float d_color = SqrDistance(center_color, sample_color);
                    float color_item = - (d_color / (2.0*m_sigmaColor*m_sigmaColor));

                    float d_normal = SafeAcos(Dot(center_normal, sample_normal));
                    float normal_item = - (d_normal * d_normal / (2.0 * m_sigmaNormal*m_sigmaNormal));

                    float d_plane = (- position_item) > 0.0f? Dot(center_normal, Normalize(sample_position - center_position)): 0.0f;
                    float plane_item = - (d_plane * d_plane / (2.0 * m_sigmaPlane * m_sigmaPlane));

                    float weight = std::exp(position_item + color_item + normal_item + plane_item);
                    weight_sum += weight;
                    final_color += sample_color * weight;
                }
            }
            filteredImage(x, y) = weight_sum > 0.0? final_color / weight_sum: Float3(0.0);
        }
    }
    return filteredImage;
}

void Denoiser::Init(const FrameInfo &frameInfo, const Buffer2D<Float3> &filteredColor) {
    m_accColor.Copy(filteredColor);
    int height = m_accColor.m_height;
    int width = m_accColor.m_width;
    m_misc = CreateBuffer2D<Float3>(width, height);
    m_valid = CreateBuffer2D<bool>(width, height);
}

void Denoiser::Maintain(const FrameInfo &frameInfo) { m_preFrameInfo = frameInfo; }

Buffer2D<Float3> Denoiser::ProcessFrame(const FrameInfo &frameInfo) {
    // Filter current frame
    Buffer2D<Float3> filteredColor;
    filteredColor = Filter(frameInfo);

    // Reproject previous frame color to current
    if (m_useTemportal) {
        Reprojection(frameInfo);
        TemporalAccumulation(filteredColor);
    } else {
        Init(frameInfo, filteredColor);
    }

    // Maintain
    Maintain(frameInfo);
    if (!m_useTemportal) {
        m_useTemportal = true;
    }
    return m_accColor;
}
