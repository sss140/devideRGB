

#include <metal_stdlib>
#include <SwiftUI/SwiftUI_Metal.h>
using namespace metal;

[[stitchable]] half4 devideRGB(float2 position, SwiftUI::Layer layer,float4 bounds, float3 rgb)
{
    half4 color = half4(0.0,0.0,0.0,1.0);
    for(int i=0;i<3;i++){
        float2 layerPosition = float2(position.x-rgb[i]*bounds.z,position.y);
        half4 layerColor = layer.sample(layerPosition);
        color[i] = layerColor[i];
    }
    return color;
}
