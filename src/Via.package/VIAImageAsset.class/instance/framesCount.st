accessing
framesCount
	"If animated GIF"
	| cmd output |
	(fileReference isKindOf: VIALocalFileReference) ifTrue: [
		cmd := 'identify -format "%n\n" "', fileReference path, '"'.
		"OR: exiftool -b -FrameCount giphy.gif"
		output := (MCLPlatform runShellCommand: cmd).
		^ output lines first asInteger].

	^ 0