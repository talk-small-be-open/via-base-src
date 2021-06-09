testing
isSelfCheckMode
	^ self isCheckable not and: [ self isSaveable ]