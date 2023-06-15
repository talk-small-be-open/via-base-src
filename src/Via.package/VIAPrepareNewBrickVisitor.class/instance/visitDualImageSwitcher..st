as yet unclassified
visitDualImageSwitcher: aSwitcher
	super visitDualImageSwitcher: aSwitcher.
	
	aSwitcher switchText: (self defaultText: 'switchText' forBrick: aSwitcher).