as yet unclassified
matchesSearchString: aString
	^ {title. internalComment. comment. self uuidString. self fileName} anySatisfy: [:each |
		VIAHelper matchesSearchString: aString in: each
	]