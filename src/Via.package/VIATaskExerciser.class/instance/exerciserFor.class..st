as yet unclassified
exerciserFor: aTaskBrick class: aClass
	^ self taskBrickSubExercisers at: aTaskBrick ifAbsentPut: [
		| component |
		component := aClass taskBrick: aTaskBrick within: self.
		
		"Install a handler, if the component closes. This means,
		we will re-create a new one lazy."
"		aBoolean ifTrue: [
			component onAnswer: [ self removeExerciserFor: aTaskBrick ] ]."

		component
	]