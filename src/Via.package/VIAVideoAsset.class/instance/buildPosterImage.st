as yet unclassified
buildPosterImage
	"Creates a video still image."
	| filepath cmd target |

	filepath := self fileReference filePath.
	target := self fileReference directory, '/', self posterFileName.

	cmd := 'ffmpeg -nostats -loglevel warning -y -i "', filepath, '" -ss 0 -vframes 1 "', target, '"'.
	MCLPlatform runShellCommand: cmd