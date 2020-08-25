as yet unclassified
uploadTextFile
	| uploader |
	
	uploader := VIAUploaderComponent new.
	
	self show: uploader onAnswer: [:fileReference |
		fileReference ifNotNil: [
			self db loadUiTextsNoOverwrite: fileReference
	]]