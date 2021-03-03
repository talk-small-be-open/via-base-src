as yet unclassified
buildScaledImageWidth: aWidth height: aHeight inFolder: aTargetFolder
	"Scales and converts a thumbnail file, with ImageMagick, if file does not exist yet."

	| filepath scaledImageFilepath cmd suffix |

	filepath := self fileReference filePath.
	suffix := '_', aWidth asString, '_', aHeight asString, '.', (VIAPlatform current extensionOfFile: filepath).

	scaledImageFilepath := aTargetFolder, '/', self fileReference fileName, suffix.

	(VIAPlatform current fileExists: scaledImageFilepath) ifFalse: [

		cmd := 'convert ', self commonImagemagickOptions, ' -scale "',
			aWidth asString,'x', aHeight asString, '>" "', filepath, '" "', scaledImageFilepath, '"'.
		MCLPlatform runShellCommand: cmd].

	^suffix