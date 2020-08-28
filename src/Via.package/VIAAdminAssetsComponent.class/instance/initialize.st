initialization
initialize

	super initialize.

"	uploader := VIAUploaderComponent new
		targetBasePath: (self db propertyAt: #fileStoragePath);
		targetRelativePath: (self wd propertyAt: #assetsRelativePath);
		yourself."
		
	batchSize := 100.
	
	self clear.
		
	self beRestoringScrollPosition