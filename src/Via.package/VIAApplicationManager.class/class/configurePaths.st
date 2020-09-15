as yet unclassified
configurePaths
	self db propertyAt: #webRootPath put: (ZnFileSystemUtils fullNameFor: '../web_root/').