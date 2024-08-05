testing
matchesSearchString: aString
	^ ({firstName. lastName. email. self uuidString.}, self socialIds) anySatisfy: [:each |
		each notBlank and: [
			VIAHelper matchesSearchString: aString in: each ] ]