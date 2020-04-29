as yet unclassified
initializeFromFileReference: aFileReference
	super initialize.
	
	"Verschieben in eigenen Folder, damit Artefakte auch dort liegen"
	aFileReference moveToSubFolderNamed: (aFileReference fileName, '.d').
	self fileReference: aFileReference.