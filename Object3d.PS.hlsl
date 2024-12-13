typedef float4 float32_t4;

struct Material{
    float32_t4 color;
};

ConstantBuffer<Material> gMaterial : register(b0); //bはConstantBufferを意味する数字は何番目か(C++のほうでレジスター番号を設定する)

struct PixelShaderOutput{
    float32_t4 color : SV_TARGET0;
};

PixelShaderOutput main(){
    PixelShaderOutput output;
    output.color = gMaterial.color;
    return output;

}