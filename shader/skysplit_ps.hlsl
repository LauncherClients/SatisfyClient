// Split skydome: horizontal cloud scroll only in a vertical band on the texture.
// vn = tu/4: 0 = top of texture (zenith), 1 = bottom (horizon) — matches vertical strip layout.
// c0: (scrollV, vStart, vEnd, feather)
//     Scroll applies between vStart and vEnd (e.g. top red line ~0.10 to bottom red line ~0.88).
//     Outside that band: static (top sun strip + bottom mountains).

sampler2D tex0 : register(s0);

float4 g : register(c0);

static const float kSkyTile = 4.0f;

float4 main(float2 uv : TEXCOORD0) : COLOR0 {
	float vn = saturate(uv.x / kSkyTile);

	float left = smoothstep(g.y - g.w, g.y + g.w, vn);
	float right = 1.0 - smoothstep(g.z - g.w, g.z + g.w, vn);
	float scrollBlend = saturate(left * right);

	// Horizontal drift only; clamp tu so WRAP never pulls mountain rows into the cloud sample.
	float margin = max(0.06, g.w * kSkyTile * 0.35);
	float skyTuMax = max(g.z * kSkyTile - margin, 0.05);
	float2 uvScroll;
	uvScroll.x = min(uv.x, skyTuMax);
	uvScroll.y = uv.y + g.x;

	float4 scrolled = tex2D(tex0, uvScroll);
	float4 still = tex2D(tex0, uv);
	float4 c = lerp(still, scrolled, scrollBlend);
	return float4(c.rgb, 1.0f);
}
