as yet unclassified
asComponentOnExercise: anExercise
	| component |
"TODO? Evt. als Visitor-Pattern? Habe ich aber verworfen."
	
	component := VIAApplicationManager current taskExerciserComponentClass smartFromExercise: anExercise.
	
	^component