as yet unclassified
posterFileName
	"Robustness"
	self fileReference fileName ifBlank: [^''].

	^self fileReference fileName, '.jpg'