as yet unclassified
deleteTransformedMediaFiles
	self transformedMediaFiles do: [ :each | VIAPlatform current deleteFileNamed: each ]