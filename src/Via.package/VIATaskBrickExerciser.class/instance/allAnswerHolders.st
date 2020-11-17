as yet unclassified
allAnswerHolders
	^ OrderedCollection new
		addAll: self childAnswerHolders;
		addIfNotNil: self answerHolder;
		yourself