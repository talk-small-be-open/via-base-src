as yet unclassified
defaultTempDirectory
	^ self db propertyAt: #tmpPath default: ['/tmp']