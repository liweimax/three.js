#if defined( USE_MAP ) || defined( USE_BUMPMAP ) || defined( USE_NORMALMAP ) || defined( USE_SPECULARMAP ) || defined( USE_ALPHAMAP ) || defined( USE_EMISSIVEMAP ) || defined( USE_ROUGHNESSMAP ) || defined( USE_METALNESSMAP )

	vUv = mat2(rotateMatrix) * vec2(uv.x - 0.5, uv.y - 0.5) + vec2(0.5, 0.5);
	vUv = (vUv -  offsetRepeat.xy)* offsetRepeat.zw;
	
#endif