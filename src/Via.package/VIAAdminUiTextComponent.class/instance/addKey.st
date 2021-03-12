as yet unclassified
addKey
	| baseKey |
	baseKey := self request: 'UI Key?'.
	(baseKey isBlank or: [ baseKey isTranslationKey not ]) ifTrue: [ ^ self ].

	self addMissingLanguagesKey: baseKey.
	
	self db languages do: [:each |
		| key |
		key := self db uiTextKeyFor: baseKey language: each.
		self editKey: key ]