as yet unclassified
parent: aComponent task: aTask
	^self basicNew
		setParent: aComponent;
		setTask: aTask;
		initialize;
		yourself