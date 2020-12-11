// https://www.shadertoy.com/view/tsyBRd

vec4 RGBShift(sampler2D map, vec2 uv, vec2 offset, float power, float barrelness) {
    vec2 center = uv - vec2( .5 );
    
    float d = power * length( center );
    normalize( center );
    vec2 value = mix( offset * power * 0.1, d * center * offset, barrelness);
    
    vec4 c1 = texture2D( map, uv - value );
    vec4 c2 = texture2D( map, uv );
    vec4 c3 = texture2D( map, uv + value );
    
    return vec4( c1.r, c2.g, c3.b, (c1.a + c2.a + c3.a) / 3. );
}