initialization
mapaelComponent: anObject
	mapaelComponent := anObject.
	
	mapaelComponent cssClassBlock: [ :geocode | self cssClassFor: geocode ].
	mapaelComponent tooltipContentBlock: [ :geocode | self tooltipContentFor: geocode ].
	mapaelComponent urlBlock: [ :geocode :html | self urlFor: geocode canvas: html ].