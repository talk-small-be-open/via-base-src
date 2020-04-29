as yet unclassified
ifBetatest: aBlock
	(self requestContext request includesKey: 'beta') ifTrue: [self session isBeta: true].
	
	^self session isBeta ifTrue: aBlock