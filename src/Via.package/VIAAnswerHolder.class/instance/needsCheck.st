testing
needsCheck
	^(self isUnchecked and: [self isEmpty not]) or: [self lastCheckedValueHasChanged]