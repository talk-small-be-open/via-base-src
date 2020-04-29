as yet unclassified
allDomains
	^(OrderedCollection with: domain)
		addAll: (aliasDomains ifBlank: [#()]);
		yourself