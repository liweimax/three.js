#if NUM_CLIPPING_PLANES > 0

	for ( int i = 0; i < UNION_CLIPPING_PLANES; ++ i ) {

		vec4 plane = clippingPlanes[ i ];
		if ( dot( vViewPosition, plane.xyz ) > plane.w ) discard;

	}
		
	#if UNION_CLIPPING_PLANES < NUM_CLIPPING_PLANES

		for ( int i = UNION_CLIPPING_PLANES; i < NUM_CLIPPING_PLANES; ++ i ) {
			vec4 plane = clippingPlanes[ i ];
			if( (dot( vViewPosition, plane.xyz ) + plane.w ) > 0.0)
 				discard;
		}
	
	#endif

#endif
