as yet unclassified
addMissingLanguagesKey: aKey
	| baseKey |
	
	baseKey := aKey copyUpTo: $/.

	self db languages do: [:each |
		self db ensureUiText: baseKey language: each].

	self showAll