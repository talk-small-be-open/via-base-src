accessing
width
	width ifNil: [
		| cmd output |
		(fileReference isKindOf: VIALocalFileReference) ifTrue: [
			cmd := 'mediainfo --Inform="Image;%Width%" "', fileReference path, '"'.
			output := (MCLPlatform runShellCommand: cmd).
			width := output asInteger]].

	^width