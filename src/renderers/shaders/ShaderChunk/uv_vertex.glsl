#if defined( USE_MAP ) || defined( USE_BUMPMAP ) || defined( USE_NORMALMAP ) || defined( USE_SPECULARMAP ) || defined( USE_ALPHAMAP ) || defined( USE_EMISSIVEMAP ) || defined( USE_ROUGHNESSMAP ) || defined( USE_METALNESSMAP )

	vUv = uv * offsetRepeat.zw + offsetRepeat.xy;
	vUv = mat2(rotateMatrix) * vec2(vUv.x - 0.5, vUv.y - 0.5) + vec2(0.5, 0.5);

#endif