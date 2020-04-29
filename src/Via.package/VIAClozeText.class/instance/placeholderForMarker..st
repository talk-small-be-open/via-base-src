testing
placeholderForMarker: aMarker
	^self placeholders detect: [:each | each isMatchingMarker: aMarker] ifNone: nil