as yet unclassified
buildCroppedImageWidth: aWidth height: aHeight inFolder: aTargetFolder

	| filepath scaledImageFilepath cmd suffix quality |

	filepath := self fileReference filePath.
	suffix := '_', aWidth asString, '_', aHeight asString, '_crop.', (VIAPlatform current extensionOfFile: filepath).

	quality := ''.
	self isJpeg ifTrue: [ 
		quality := self containsTextInImage ifTrue: [ '-quality 95' ] ifFalse: [ '-quality 80' ]
	].

	scaledImageFilepath := aTargetFolder, '/', self fileReference fileName, suffix.

	(VIAPlatform current fileExists: scaledImageFilepath) ifFalse: [
		cmd := 'convert -bordercolor white -border 1x1 -fuzz 5% -trim +repage -strip -resize "', aWidth asString,'x', aHeight asString, '^" -gravity center -crop "', aWidth asString,'x', aHeight asString, '+0+0" ', quality, ' "', filepath, '" "', scaledImageFilepath, '"'.
		MCLPlatform runShellCommand: cmd].

	^suffix