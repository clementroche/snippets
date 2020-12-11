float distanceToCenter(vec2 uv, float aspectRatio) {
    vec2 center = uv - vec2(.5);
    
    return length(center * vec2(aspectRatio,1.));
}