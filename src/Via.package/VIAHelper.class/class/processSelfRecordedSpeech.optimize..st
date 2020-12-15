as yet unclassified
processSelfRecordedSpeech: aFileReference optimize: aBoolean
	| filepath outputFilepath outputFileName cmd |

	"Konvertieren nach MP3. Optional: Pegel normalisieren, Hochpassfilter, Stille entfernen, und nach mp3 konvertieren"
	
	filepath := aFileReference filePath.

"	optimizedFilepath := filepath, '.tmp.', (VIAPlatform current extensionOfFile: filepath)."
	outputFileName := aFileReference fileName, '.mp3'.
	outputFilepath := filepath, '.mp3'.

	aFileReference
		fileName: outputFileName;
		clearContentType.

	"ffmpeg Filter: highpass=frequency=100,dynaudnorm=s=15:m=50,silenceremove=start_periods=1:start_threshold=-60dB"	
"With ffmpeg"
"	cmd := String streamContents: [:s |
		s << 'ffmpeg -nostats -loglevel warning -y '.
		s << (' -i ""', filepath, '"" ').
		s << ' -filter:a ""highpass=frequency=100,dynaudnorm=t=-50db:m=50,silenceremove=start_periods=1:start_threshold=-60dB""'.
		
		s << (' ""', optimizedFilepath, '"" ').
		s << (' && rm ""', filepath, '""').
	]."


	"With SoX. Convert from webm to wav with ffmpeg"
	"SoX see: http://sox.sourceforge.net/sox.html"
	cmd := String streamContents: [:s |
		s << 'ffmpeg -nostats -loglevel warning -y '.
		s << (' -i "', filepath, '" ').
		s << (' "', filepath, '.wav" ').
		s << ' && '.
		s << 'sox '.
		s << ('"', filepath, '.wav" ').
		s << '-C 128.01 '. "128 = kbps bitrate .01 = code for highest quality"
		s << ('"', outputFilepath, '" ').
		
		aBoolean ifTrue: [
			s << ' highpass 80 fade l 0 -0.2 0.2 silence 1 0.05 -40d fade l 0.001 pad 0.5 gain -n -1' ].

		s << (' && rm "', filepath, '" "', filepath, '.wav"').
	].


	MCLPlatform runShellCommand: cmd