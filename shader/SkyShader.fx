//=====================================================================
//  SkyShader.fx — CARTOON SKY + MOVING PROCEDURAL CLOUDS
//  DirectX 9 — Shader Model 3.0
//  Coordinate System: X,Y = horizontal plane, Z = up
//=====================================================================

float4x4 matWorldViewProj;
// Dome vertices are world-space positions; procedural direction = normalize(vertex - eye).
float3 SkyEyePos       = { 0.0f, 0.0f, 0.0f };

float3 SkyTopColor     = { 0.15f, 0.35f, 0.80f };
float3 SkyHorizonColor = { 0.75f, 0.90f, 1.00f };
float  SkyIntensity    = 1.0f;

float  Time            = 0.0f;
float  CloudOpacity    = 0.55f;
float  CloudTile       = 6.0f;
float2 CloudSpeed      = { 0.003f, 0.002f };
float  CloudWarp       = 0.10f;
float  CloudPulse      = 0.03f;

//---------------------------------------------------------------------
//  Vertex
//---------------------------------------------------------------------

struct VS_INPUT
{
    float3 Pos : POSITION;
};

struct VS_OUTPUT
{
    float4 Pos      : POSITION;
    float3 WorldPos : TEXCOORD0;
};

VS_OUTPUT VS_Sky(VS_INPUT In)
{
    VS_OUTPUT Out;
    Out.Pos = mul(float4(In.Pos, 1.0f), matWorldViewProj);
    Out.Pos.z = Out.Pos.w;
    Out.WorldPos = In.Pos - SkyEyePos;
    return Out;
}

//---------------------------------------------------------------------
//  Noise (DX9 safe)
//---------------------------------------------------------------------

float Hash(float2 p)
{
    return frac(sin(dot(p, float2(41.7, 113.5))) * 3758.5453);
}

float Noise(float2 p)
{
    float2 i = floor(p);
    float2 f = frac(p);

    float a = Hash(i);
    float b = Hash(i + float2(1,0));
    float c = Hash(i + float2(0,1));
    float d = Hash(i + float2(1,1));

    float2 u = f * f * (3.0f - 2.0f * f);

    return lerp(lerp(a, b, u.x), lerp(c, d, u.x), u.y);
}

//---------------------------------------------------------------------
//  Pixel
//---------------------------------------------------------------------

float4 PS_Sky(VS_OUTPUT In) : COLOR0
{
    float3 dir = In.WorldPos;
    float rl = dot(dir, dir);
    if (rl < 1e-10f)
        dir = float3(0.0f, 0.0f, 1.0f);
    else
        dir *= rsqrt(rl);
    float h = saturate(dir.z);   // Z is up in this engine

    // Smooth gradient
    float3 skyColor =
        lerp(SkyHorizonColor, SkyTopColor, h) * SkyIntensity;

    //-------------------------------
    // Spherical UV for proper cloud mapping
    //-------------------------------
    float2 wind = Time * CloudSpeed;

    // Spherical projection: map hemisphere to flat UV
    // Divide by (h + 0.15) to spread near zenith and compress at horizon
    float2 sphereUV = dir.xy / (h + 0.15f);
    float2 uv = sphereUV * CloudTile + wind;

    // Subtle warp
    float warp = Noise(uv * 0.5f + Time * 0.1f) * CloudWarp;
    uv += float2(warp, -warp);

    // Multi-octave noise for detailed small clouds
    float n =
        Noise(uv)             * 0.45f +
        Noise(uv * 2.3f + 7.0f)  * 0.30f +
        Noise(uv * 5.1f + 13.0f) * 0.15f +
        Noise(uv * 11.0f + 21.0f) * 0.10f;

    // Subtle animation
    n += sin(Time * 0.5f + n * 4.0f) * CloudPulse;

    // Cloud shape — tight threshold = small individual clouds
    float cloudShape = smoothstep(0.58f, 0.68f, n);

    // Soft cartoon quantization
    cloudShape = floor(cloudShape * 6.0f + 0.5f) / 6.0f;

    // Fade clouds at horizon (avoid wall of white)
    cloudShape *= smoothstep(0.0f, 0.25f, h);

    float cloudAlpha = cloudShape * CloudOpacity;

    float3 cloudColor =
        lerp(skyColor, float3(1.0f, 1.0f, 1.0f), cloudAlpha);

    return float4(cloudColor, 1.0f);
}

//---------------------------------------------------------------------
//  Technique
//---------------------------------------------------------------------

technique SkyTech
{
    pass P0
    {
        ZEnable          = TRUE;
        ZWriteEnable     = FALSE;
        ZFunc            = LESSEQUAL;

        CullMode         = NONE;
        Lighting         = FALSE;
        FogEnable        = FALSE;

        AlphaBlendEnable = FALSE;
        AlphaTestEnable  = FALSE;

        VertexShader = compile vs_3_0 VS_Sky();
        PixelShader  = compile ps_3_0 PS_Sky();
    }
}
