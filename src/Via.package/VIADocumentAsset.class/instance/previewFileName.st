as yet unclassified
previewFileName
	"Robustness"
"	self fileReference fileName ifBlank: [^'']."

	^ self fileReference fileName, '_preview.png'