#include "Object3d.hlsli"

struct Material{
    float4 color;
};

ConstantBuffer<Material> gMaterial : register(b0); //bはConstantBufferを意味する数字は何番目か(C++のほうでレジスター番号を設定する)
Texture2D<float4> gTexture : register(t0); //SRVのregisterのときはt
SamplerState gSampler : register(s0); //Samplerのregisterのときはs
struct PixelShaderOutput{
    float4 color : SV_TARGET0;
};

PixelShaderOutput main(VertexShaderOutput input){
    float4 textureColor = gTexture.Sample(gSampler, input.texcoord);
    PixelShaderOutput output;
    output.color = gMaterial.color * textureColor;
    return output;

}