as yet unclassified
m048RenameConfigs
	| value |
	value := self db propertyAt: #fileStoragePath.
	value ifNotBlank: [
		self db propertyAt: #webRootPath put: value.
		self db propertyRemoveAt: #fileStoragePath].
	
	self db websiteDatasDo: [ :each | each propertyRemoveAt: #assetsRelativePath ]