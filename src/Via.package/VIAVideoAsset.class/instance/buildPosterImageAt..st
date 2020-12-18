as yet unclassified
buildPosterImageAt: anIntegerMs
	"Creates a video still image from a position."
	| filepath cmd target |

	filepath := self fileReference filePath.
	target := self fileReference directory, '/', (self posterFileNameAt: anIntegerMs).

	cmd := 'ffmpeg -nostats -loglevel warning -y -i "',
		filepath, '" -ss ', anIntegerMs asString, 'ms -vframes 1 "', target, '"'.

	MCLPlatform runShellCommand: cmd