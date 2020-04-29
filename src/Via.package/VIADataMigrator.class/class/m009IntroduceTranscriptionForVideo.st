as yet unclassified
m009IntroduceTranscriptionForVideo
	VIAVideoPlayer allInstances do: [:each |
		each initializeDefaultValues.
		each transcriptionPillar pillarString: (each instVarNamed: 'transcription')]