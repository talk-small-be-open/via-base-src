actions
validateAndAnswer
	"If we do not already have an error, we additionaly check some conditions"
	self hasErrorMessage ifFalse: [
		self hasUploadedFile ifFalse: [self errorMessage: 'Keine Datei hochgeladen'. ^self]].
	
	"If we have no errors by this time, then we really add the attachment"
	self hasErrorMessage ifFalse: [
		self answer: tempFileReference.
		self clearTempFileReference.
		]