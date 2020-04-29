as yet unclassified
areaForMarker: aMarker
	^self areas detect: [:each | each isMatchingMarker: aMarker] ifNone: nil