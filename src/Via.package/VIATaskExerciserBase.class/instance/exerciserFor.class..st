as yet unclassified
exerciserFor: aTaskBrick class: aClass
	^ self taskBrickSubExercisers at: aTaskBrick ifAbsentPut: [ aClass taskBrick: aTaskBrick within: self ]