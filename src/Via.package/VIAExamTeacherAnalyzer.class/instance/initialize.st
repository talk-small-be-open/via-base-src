initialization
initialize

	super initialize.

	self calculateMostWrongBricks.
	self calculateBrickDetails.
	
	self buildComponents.
	
	self addContainerDiv.
	
	maxLight := 80.
	maxSaturation := 80.