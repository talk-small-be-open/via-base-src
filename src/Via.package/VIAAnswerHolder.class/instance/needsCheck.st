testing
needsCheck
	^self isUnchecked and: [self isEmpty not and: [self lastCheckedValueHasChanged]]