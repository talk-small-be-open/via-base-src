as yet unclassified
clickModel: aModelObject
	self shouldAnswer
		ifTrue: [ self answerModel: aModelObject ]
		ifFalse: [ self inspectModel: aModelObject ]
