as yet unclassified
fileExtension
	self isFileDefined ifFalse: [ ^ '' ].
	
	^ VIAPlatform current extensionOfFile: self fileName