as yet unclassified
cleanupAfterDeletion
	self isFileExisting ifTrue: [
		self deleteFile]