as yet unclassified
labelForChoice: aChoice
	
	aChoice ifNil: [ ^ nil ].
	
	^(choices at: aChoice) second