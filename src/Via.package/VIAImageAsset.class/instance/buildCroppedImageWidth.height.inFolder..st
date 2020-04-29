as yet unclassified
buildCroppedImageWidth: aWidth height: aHeight inFolder: aTargetFolder

	| filepath scaledImageFilepath cmd suffix |

	filepath := self fileReference filePath.
	suffix := '_', aWidth asString, '_', aHeight asString, '_crop.', (VIAPlatform extensionOfFile: filepath).

	scaledImageFilepath := aTargetFolder, '/', self fileReference fileName, suffix.

	(VIAPlatform fileExists: scaledImageFilepath) ifFalse: [
		cmd := 'convert -bordercolor white -border 1x1 -fuzz 5% -trim +repage -strip -resize "', aWidth asString,'x', aHeight asString, '^" -gravity center -crop "', aWidth asString,'x', aHeight asString, '+0+0" "', filepath, '" "', scaledImageFilepath, '"'.
		MCLPlatform runShellCommand: cmd].

	^suffix