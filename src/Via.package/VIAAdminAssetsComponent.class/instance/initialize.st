initialization
initialize

	super initialize.

"	uploader := VIAUploaderComponent new
		targetBasePath: (self db propertyAt: #fileStoragePath);
		targetRelativePath: (self wd propertyAt: #assetsRelativePath);
		yourself."
		
	self beRestoringScrollPosition