as yet unclassified
takeFromFileReference: aFileReference

	"Verschieben in eigenen Folder, damit Artefakte auch dort liegen"
	aFileReference moveToSubFolderNamed: (aFileReference fileName, '.d').
	self fileReference: aFileReference.
	self afterTakeFromFileReference.