as yet unclassified
buildFirstPagePreviewImage
	"Converts first document page into a PNG"
	| previewImageFilepath cmd |
	
	self isPreviewable ifFalse: [ ^ self ].

	previewImageFilepath := self fileReference directory, '/', self previewFileName.

	cmd := 'convert -background white -alpha remove -bordercolor white -border 1x1 -fuzz 5% -trim +repage -strip -scale "800x800>" "', self fileReference filePath, '[0]" "', previewImageFilepath, '"'.

	MCLPlatform runShellCommand: cmd