testing
needsCheck
"	^self isUnchecked and: [self isEmpty not and: [self lastCheckedValueHasChanged]]."
	
	self isEmpty ifTrue: [ ^ false ].
	
	self isUnchecked ifTrue: [ ^ true ].
	
	self lastCheckedValueHasChanged ifTrue: [ ^ true ].
	
	^ false