initialization
initialize

	super initialize.
		
	batchSize := 100.
	mediaClasses := VIAMediaAsset subclasses sortedBy: [:each | each displayName ].
	
	self clear.
		
	self beRestoringScrollPosition