as yet unclassified
goAhead
	| next |
	next := stepIndex + 1.
	
	(next > sequence size) ifTrue: [ ^ self ].
	
	stepIndex := next.

	self currentStep isInteger ifTrue: [
		self gotoQAndA: self currentStep ]