initialization
initialize

	super initialize.

	files := OrderedCollection new.
	videoCounter := 1.
	audioCounter := 1.
	imageCounter := 1.
	titlePrefix := nil