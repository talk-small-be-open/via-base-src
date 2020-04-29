as yet unclassified
visitViaPrMarker: aViaPrMarker
"	html span: 'Marker: ', aViaPrMarker name."
	markerRenderingBlock
		ifNil: [html span: aViaPrMarker markerString]
		ifNotNil: [markerRenderingBlock value: aViaPrMarker value: html]