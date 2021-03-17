as yet unclassified
buildCroppedImageWidth: aWidth height: aHeight inFolder: aTargetFolder

	| filepath scaledImageFilepath cmd suffix |

	filepath := self fileReference filePath.
	suffix := '_', aWidth asString, '_', aHeight asString, '_crop.', (VIAPlatform current extensionOfFile: filepath).

	scaledImageFilepath := aTargetFolder, '/', self fileReference fileName, suffix.

	(self fastFileExists: scaledImageFilepath) ifFalse: [

		cmd := 'convert ', self commonImagemagickOptions, ' -scale "', aWidth asString,'x', aHeight asString, '^" -gravity center -crop "', aWidth asString,'x', aHeight asString, '+0+0" "', filepath, '" "', scaledImageFilepath, '"'.
		MCLPlatform runShellCommand: cmd].

	^suffix