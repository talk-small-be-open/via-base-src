as yet unclassified
buildPosterImageAt: anIntegerMs
	"Creates a video still image from a position."
	| filepath cmd target ssString |

	filepath := self fileReference filePath.
	target := self fileReference directory, '/', (self posterFileNameAt: anIntegerMs).

	ssString := (anIntegerMs / 1000) printShowingDecimalPlaces: 3.
	
	cmd := 'ffmpeg -nostats -loglevel warning -y -i "',
		filepath, '" -ss ', ssString, ' -vframes 1 "', target, '"'.

	MCLPlatform runShellCommand: cmd