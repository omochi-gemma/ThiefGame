#version 150

uniform sampler2D DiffuseSampler;
uniform sampler2D DiffuseDepthSampler;
uniform sampler2D ControlSampler;
uniform sampler2D FlashlightSampler;

uniform vec4 ColorModulate;

uniform mat4 ProjMat;
uniform vec2 InSize;
uniform vec2 OutSize;
uniform vec2 ScreenSize;
uniform float _FOV;
uniform float InverseAmount;

in vec2 texCoord;
out vec4 fragColor;

float near = 0.1; 
float far  = 1000.0;
float LinearizeDepth(float depth) 
{
    float z = depth * 2.0 - 1.0;
    return (near * far) / (far + near - z * (far - near));    
}

// Flashlight Variables
const float exposure = 2.;
const float AOE = 8.;

void main() {
    vec4 prev_color  = texture(DiffuseSampler, texCoord);
    vec4 overlay;
	fragColor = prev_color;

    // Channel #1
    vec4 control_color = texelFetch(ControlSampler, ivec2(0, 1), 0);
    switch(int(control_color.b * 255.)) {
        case 1:
            // --- モノクロ化ロジック (モノクロ化をトリガー) ---
            vec4 diffuseColor = texture(DiffuseSampler, texCoord);
            
            // 輝度 (Luminance) の計算: 標準的な加重平均 L = 0.299R + 0.587G + 0.114B
            float luminance = dot(diffuseColor.rgb, vec3(0.299, 0.587, 0.114));
            
            // モノクロカラー (R=G=B=輝度) の作成
            vec4 monochromeColor = vec4(luminance, luminance, luminance, diffuseColor.a);
            
            // 元の色とモノクロカラーを InverseAmount (モノクロ化の強度) でミックス
            vec4 outColor = mix(diffuseColor, monochromeColor, InverseAmount);
            
            fragColor = vec4(outColor.rgb, 1.0);
            break;
    }
 
}