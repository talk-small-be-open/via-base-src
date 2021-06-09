testing
isPassiveMode
	^ self isCheckable not and: [ self isSaveable ]