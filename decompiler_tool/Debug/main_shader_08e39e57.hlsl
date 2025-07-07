// ---- Created with 3Dmigoto v1.3.16 on Mon Jul  7 10:37:35 2025
cbuffer cb5 : register(b5)
{
  float4 cb5[22];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[80];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[17];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[48];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD2,
  out float4 o5 : TEXCOORD3,
  out float4 o6 : TEXCOORD4,
  out float4 o7 : TEXCOORD8,
  out float3 o8 : TEXCOORD9)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0.5 < cb4[79].z);
  r0.y = cmp(0.5 < cb0[47].x);
  r0.x = r0.y ? r0.x : 0;
  r0.yzw = cb3[1].xyz * v0.yyy;
  r0.yzw = cb3[0].xyz * v0.xxx + r0.yzw;
  r0.yzw = cb3[2].xyz * v0.zzz + r0.yzw;
  r0.yzw = cb3[3].xyz + r0.yzw;
  r1.xyzw = cb1[19].xyzw * r0.zzzz;
  r1.xyzw = cb1[18].xyzw * r0.yyyy + r1.xyzw;
  r1.xyzw = cb1[20].xyzw * r0.wwww + r1.xyzw;
  o8.xyz = r0.yzw;
  r1.xyzw = cb1[21].xyzw + r1.xyzw;
  r2.xyzw = cb3[14].xyzw * v0.yyyy;
  r2.xyzw = cb3[13].xyzw * v0.xxxx + r2.xyzw;
  r2.xyzw = cb3[15].xyzw * v0.zzzz + r2.xyzw;
  r2.xyzw = cb3[16].xyzw + r2.xyzw;
  r1.xyzw = cb5[20].yyyy ? r1.xyzw : r2.xyzw;
  r0.y = -2 * r1.w;
  o0.z = r0.x ? r0.y : r1.z;
  o0.xyw = r1.xyw;
  r0.x = 10 * cb5[4].w;
  r0.x = cb5[20].w * r0.x;
  o1.w = v1.w * r0.x;
  o1.xyz = v1.xyz;
  r0.x = cmp(0 != cb5[12].x);
  r1.yw = v2.xy;
  r0.y = cmp(cb0[0].x < 0.5);
  r1.xz = r0.yy ? v2.xy : v2.zw;
  r3.xyz = float3(1,1,1) + -cb5[16].xyz;
  r4.xy = v2.zw;
  r4.zw = v3.xy;
  r4.xyzw = r0.yyyy ? r4.xyzw : v3.xyzw;
  r0.zw = r4.zz * cb5[16].xz + r3.xz;
  r3.x = r4.z * cb5[16].y + r3.y;
  r3.yz = cb5[16].xz * r4.ww;
  r1.xy = r1.yx * r0.zw + r3.yz;
  r0.zw = cb5[13].zw + -r1.yz;
  r1.yz = r1.yz * cb5[13].xy + cb5[13].zw;
  r0.zw = min(float2(1,1), abs(r0.zw));
  o2.zw = r0.xx ? r1.yz : r0.zw;
  r1.xy = r1.xw * cb5[0].xy + cb5[0].zw;
  r0.x = cb5[16].y * r4.w;
  r0.z = v2.x * r3.x + r0.x;
  r0.w = v2.y;
  r1.zw = r0.zw * cb5[14].xy + cb5[14].zw;
  r0.x = cmp(0 != cb5[21].x);
  r0.x = r0.x ? cb5[21].y : cb1[0].y;
  r3.xy = cb5[1].xy * r0.xx;
  r3.zw = cb5[15].xy * r0.xx;
  r1.xyzw = r3.xyzw + r1.xyzw;
  o2.xy = r1.xy;
  o6.xy = r1.zw;
  r1.x = 1 + cb5[10].z;
  r1.x = r1.x + -r4.x;
  o3.x = cb5[17].x * r1.x + r4.x;
  o3.yzw = r4.yzw;
  r1.xy = r0.zw * cb5[9].xy + cb5[9].zw;
  o4.zw = r0.zw;
  o4.xy = cb5[10].xy * r0.xx + r1.xy;
  r1.xy = v3.zw;
  r1.zw = v4.xy;
  o5.xyzw = r0.yyyy ? r1.xyzw : v4.xyzw;
  r0.xyz = float3(0.5,0.5,0.5) * r2.xyw;
  o7.zw = r2.zw;
  r0.w = cb2[0].x * r0.y;
  o7.xy = r0.xw + r0.zz;
  return;
}