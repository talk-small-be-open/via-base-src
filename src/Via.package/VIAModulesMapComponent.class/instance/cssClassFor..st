as yet unclassified
cssClassFor: aGeocode
	^ (self moduleFor: aGeocode) ifNotNil: [:m |
		'level-', m exerciseLevel asLowercase ]