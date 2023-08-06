//
//  Shader.metal
//  SwiftUIMetalTextShaderExample
//
//  Created by Toomas Vahter on 06.08.2023.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 stripes(float2 position, float stripeWidth) {
    bool isAlternativeColor = uint(position.x / stripeWidth) & 1;
    return isAlternativeColor ? half4(0, 0, 1, 1) : half4(1, 0, 0, 1);
}
