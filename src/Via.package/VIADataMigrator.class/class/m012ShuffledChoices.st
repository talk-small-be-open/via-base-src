as yet unclassified
m012ShuffledChoices
	VIASelectOneInput allInstances do: [:each |
		each shuffleChoices: true].
	VIASelectManyInput allInstances do: [:each |
		each shuffleChoices: true].