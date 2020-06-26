as yet unclassified
visitTaskBrick: aTask
	super visitTaskBrick: aTask.
	
	aTask childBricks do: [ :each | each acceptVisitor: self ]