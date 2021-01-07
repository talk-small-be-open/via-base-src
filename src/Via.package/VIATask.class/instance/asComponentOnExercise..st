as yet unclassified
asComponentOnExercise: anExercise
	| component |
"TODO? Evt. als Visitor-Pattern? Habe ich aber verworfen."
	
	component := self am taskExerciserComponentClass smartFromExercise: anExercise.
	
	^component