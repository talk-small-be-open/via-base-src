as yet unclassified
taskBrick: aTaskBrick within: anExerciserComponent
	^ self basicNew
		setTaskBrick: aTaskBrick;
		setParentExerciser: anExerciserComponent;
		initialize;
		yourself