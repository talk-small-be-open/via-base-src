testing
matchesSearchString: aString
	^( VIAHelper matchesSearchString: aString in: title ) or: [
		self classification matchesSearchString: aString]