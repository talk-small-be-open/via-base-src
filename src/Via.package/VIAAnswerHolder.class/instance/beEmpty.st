as yet unclassified
beEmpty
	value isCollection
		ifTrue: [value := value copyEmpty]
		ifFalse: [value := nil]