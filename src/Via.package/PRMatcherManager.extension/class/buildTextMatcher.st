*Via
buildTextMatcher
	<ignoreForCoverage>
	| result |
	result := Dictionary new.
	result
		at: '*' put: PRReference;
		at: '+' put: PRReference;
		at: PRRaw markupBegin put: PRRaw;
		at: PRScript markupBegin put: PRScript;
		at: VIAPrMarker markupBegin put: VIAPrMarker;
		at: PRAbstractAnnotation markupBegin put: PRAbstractAnnotation;
		at: VIAPrAnnotatedFormat markupBegin put: VIAPrAnnotatedFormat.
	PRFormat allSubclassesDo: [ :each | result at: each markup put: each ].
	
	VIAApplicationManager current configurePillarTextMatcher: result.
	
	^ result