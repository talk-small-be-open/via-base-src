as yet unclassified
visitFileDownloader: aFileDownloader
	self addFile: aFileDownloader asset fileReference title: ('Document file ', fileCounter greaseString).
	fileCounter := fileCounter + 1.