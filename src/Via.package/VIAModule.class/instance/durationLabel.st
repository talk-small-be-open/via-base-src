labels
durationLabel
	^self durationTag ifNotNil: [:e | e text] ifNil: ['0']