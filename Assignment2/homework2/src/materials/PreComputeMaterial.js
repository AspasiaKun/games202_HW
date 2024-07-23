class PreComputeMaterial extends Material {

    constructor(vertexShader, fragmentShader) {

        super({
            'uPreComputeL[0]': { type: 'precomputeL', value: null},
            'uPreComputeL[1]': { type: 'precomputeL', value: null},
            'uPreComputeL[2]': { type: 'precomputeL', value: null},

        },['aPrecomputeLT'], vertexShader, fragmentShader, null);
    }
}

async function buildPreComputeMaterial(vertexPath, fragmentPath) {
    let vertexShader = await getShaderString(vertexPath);
    let fragmentShader = await getShaderString(fragmentPath);

    return new PreComputeMaterial(vertexShader, fragmentShader);
}