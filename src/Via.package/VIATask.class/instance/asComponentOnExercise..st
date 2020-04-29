as yet unclassified
asComponentOnExercise: anExercise
	| component |
"TODO? Evt. als Visitor-Pattern? Habe ich aber verworfen."
	
	component := VIAExerciserComponent smartFromExercise: anExercise.
	
	^component