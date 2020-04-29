as yet unclassified
aspectRatio
	aspectRatio ifNil: [
		| cmd output |
		cmd := 'mediainfo --Inform="Video;%DisplayAspectRatio%" "', fileReference path, '"'.
		output := (MCLPlatform runShellCommand: cmd).
"		output := output copyReplaceAll: ':' with: '/'."
		aspectRatio := Number readFrom: output].

	^aspectRatio