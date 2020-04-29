as yet unclassified
configurePaths
	self db propertyAt: #fileStoragePath put: (ZnFileSystemUtils fullNameFor: '../web_root/').