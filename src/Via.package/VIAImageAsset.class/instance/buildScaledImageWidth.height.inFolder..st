as yet unclassified
buildScaledImageWidth: aWidth height: aHeight inFolder: aTargetFolder
	"Scales and converts a thumbnail file, with ImageMagick, if file does not exist yet."

	| filepath scaledImageFilepath cmd suffix |

	filepath := self fileReference filePath.
	suffix := '_', aWidth asString, '_', aHeight asString, '.', (VIAPlatform extensionOfFile: filepath).

	scaledImageFilepath := aTargetFolder, '/', self fileReference fileName, suffix.

	(VIAPlatform fileExists: scaledImageFilepath) ifFalse: [
		cmd := 'convert -bordercolor white -border 1x1 -fuzz 5% -trim +repage -strip -resize "', aWidth asString,'x', aHeight asString, '>" "', filepath, '" "', scaledImageFilepath, '"'.
		MCLPlatform runShellCommand: cmd].

	^suffix