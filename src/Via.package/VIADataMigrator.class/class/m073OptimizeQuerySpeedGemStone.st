as yet unclassified
m073OptimizeQuerySpeedGemStone
	IndexManager autoCommit: true.
	
	VIADatabase current websiteDatasDo: [ :each |
		| collection |
		
		collection := each instVarNamed: 'users'.
		(collection isMemberOf: OrderedCollection) ifTrue: [
			each instVarNamed: 'users' put: (RcIdentitySet withAll: collection)
		].

		collection := each instVarNamed: 'portfolios'.
		(collection isMemberOf: OrderedCollection) ifTrue: [
			each instVarNamed: 'portfolios' put: (RcIdentitySet withAll: collection)
		].
	
"		each createGemStoneIndexes."
	].

	self db createGemStoneIndexes

	

