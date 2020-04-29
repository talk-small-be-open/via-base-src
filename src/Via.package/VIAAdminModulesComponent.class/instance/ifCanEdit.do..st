as yet unclassified
ifCanEdit: aModule do: aBlock
	^(self canEditModule: aModule) ifTrue: aBlock