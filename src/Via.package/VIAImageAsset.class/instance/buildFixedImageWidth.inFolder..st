as yet unclassified
buildFixedImageWidth: aWidth inFolder: aTargetFolder
	"Fixed width, height calculated.
	Scales and converts a thumbnail file, with ImageMagick, if file does not exist yet."

	| filepath scaledImageFilepath cmd suffix |

	filepath := self fileReference filePath.
	suffix := '_', aWidth asString, '.', (VIAPlatform current extensionOfFile: filepath).

	scaledImageFilepath := aTargetFolder, '/', self fileReference fileName, suffix.

	(self fastFileExists: scaledImageFilepath) ifFalse: [

		cmd := 'convert ', self commonImagemagickOptions, ' -scale ', aWidth asString,' "', filepath, '" "', scaledImageFilepath, '"'.
		MCLPlatform runShellCommand: cmd].

	^suffix