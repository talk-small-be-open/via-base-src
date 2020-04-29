as yet unclassified
width
	width ifNil: [
		| cmd output |
		(fileReference isKindOf: VIALocalFileReference) ifTrue: [
			cmd := 'mediainfo --Inform="Video;%Width%" "', fileReference path, '"'.
			output := (MCLPlatform runShellCommand: cmd).
			width := output asInteger]].

	^width