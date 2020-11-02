as yet unclassified
percentDone
	| ahs total checked |
	ahs := self mainAnswerHolders.
	
	checked := ahs count: [ :each | each isChecked ].
	total := ahs size.
	
	^ VIAHelper percentage: checked of: total