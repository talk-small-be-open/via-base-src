as yet unclassified
aspectRatio
	"3/4 = 0.75 etc."
	aspectRatio ifNil: [
		| cmd output |
		cmd := 'mediainfo --Inform="Video;%DisplayAspectRatio%" "', fileReference path, '"'.
		output := (MCLPlatform runShellCommand: cmd).
"		output := output copyReplaceAll: ':' with: '/'."
		aspectRatio := Number readFrom: output.

		"Ranges check"
		aspectRatio isZero ifTrue: [ aspectRatio := 1 ].
		aspectRatio < 0 ifTrue: [ aspectRatio := 1 ].
	].
	
	^ aspectRatio