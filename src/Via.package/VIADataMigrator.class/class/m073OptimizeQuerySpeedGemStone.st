as yet unclassified
m073OptimizeQuerySpeedGemStone
	VIADatabase current websiteDatasDo: [ :each |
		| collection |
		
		collection := each instVarNamed: 'users'.
		(collection isMemberOf: OrderedCollection) ifTrue: [
			each instVarNamed: 'users' put: (RcIdentitySet withAll: collection)
		]
	]