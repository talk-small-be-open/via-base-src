as yet unclassified
duration
	"Duration of movie in seconds"
	duration ifNil: [
		| cmd output |
		cmd := 'mediainfo --Inform="Video;%Duration%" "', fileReference path, '"'.
		output := (MCLPlatform runShellCommand: cmd).
		duration := (Number readFrom: output) / 1000].

	^duration