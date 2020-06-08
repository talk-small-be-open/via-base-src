as yet unclassified
allInstancesOfClass: aClass do: aBlock
	| collection |
	self isGemStone
		ifFalse: [aClass allInstancesDo: aBlock]
		ifTrue: [
			self commitTransaction.
			collection := aClass allInstances. "Does an abort"
			System beginTransaction. 
			collection do: aBlock
		]