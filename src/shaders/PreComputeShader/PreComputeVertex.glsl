attribute vec3 aVertexPosition;
attribute vec3 aNormalPosition;
attribute vec2 aTextureCoord;
attribute mat4 aPrecomputeLT;

uniform mat4 uModelMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uProjectionMatrix;
uniform mat3 uPreComputeL[3];

varying highp vec3 vNormal;
varying highp vec2 vTextureCoord;
varying highp mat3 vPrecomputeLT;
varying highp vec3 vFragPos;
varying highp vec3 vColor;

float L_dot_LT(mat3 PrecomputeL, mat3 PrecomputeLT) {
    vec3 L_0 = PrecomputeL[0];
    vec3 L_1 = PrecomputeL[1];
    vec3 L_2 = PrecomputeL[2];
    vec3 LT_0 = PrecomputeLT[0];
    vec3 LT_1 = PrecomputeLT[1];
    vec3 LT_2 = PrecomputeLT[2];
    return dot(L_0,LT_0)+dot(L_1,LT_1)+dot(L_2,LT_2);
}


void main() {
  vNormal = (uModelMatrix * vec4(aNormalPosition, 0.0)).xyz;

  for (int i=0; i<3; i++) {
    // vColor[i] = L_dot_LT(uPrecomputeL[i], aPrecomputeLT);
    vColor[i] = uPreComputeL[i][0][0];
  }

  gl_Position = uProjectionMatrix * uViewMatrix * uModelMatrix *
                vec4(aVertexPosition, 1.0);
}