as yet unclassified
buildScaledImageWidth: aWidth height: aHeight inFolder: aTargetFolder
	"Scales and converts a thumbnail file, with ImageMagick, if file does not exist yet."

	| filepath scaledImageFilepath cmd suffix quality |

	filepath := self fileReference filePath.
	suffix := '_', aWidth asString, '_', aHeight asString, '.', (VIAPlatform current extensionOfFile: filepath).

	scaledImageFilepath := aTargetFolder, '/', self fileReference fileName, suffix.

	(VIAPlatform current fileExists: scaledImageFilepath) ifFalse: [

		quality := ''.
		self isJpeg ifTrue: [ 
			quality := self containsTextInImage ifTrue: [ ' -quality 95 ' ] ifFalse: [ ' -quality 80 ' ]
		].

		cmd := 'convert -bordercolor white -border 1x1 -fuzz 5% -trim +repage -strip -resize "',
			aWidth asString,'x', aHeight asString, '>" ', quality,' "', filepath, '" "', scaledImageFilepath, '"'.
		MCLPlatform runShellCommand: cmd].

	^suffix