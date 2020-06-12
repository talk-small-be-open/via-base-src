as yet unclassified
optimizeSelfRecordedSpeech: aFileReference
	| filepath optimizedFilepath cmd |
	
	filepath := aFileReference filePath.

	optimizedFilepath := filepath, '.tmp.', (VIAPlatform current extensionOfFile: filepath).

	cmd := String streamContents: [:s |
		s << 'ffmpeg -nostats -loglevel warning -y '.
		s << (' -i "', filepath, '" ').
		s << ' -filter:a "highpass=frequency=100,dynaudnorm=compress=15:maxgain=50,silenceremove=start_periods=1:start_threshold=-60dB"'.
		
		s << (' "', optimizedFilepath, '" ').
		s << (' && cp -f "', optimizedFilepath, '" "', filepath, '"').
		s << (' && rm "', optimizedFilepath, '"').
	].

	MCLPlatform runShellCommand: cmd