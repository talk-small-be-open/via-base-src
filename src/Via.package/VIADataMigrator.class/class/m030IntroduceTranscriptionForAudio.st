as yet unclassified
m030IntroduceTranscriptionForAudio
	VIAAudioPlayer allInstances do: [:each |
		each initializeDefaultValues.
"		each transcriptionPillar pillarString: (each instVarNamed: 'transcription')"]