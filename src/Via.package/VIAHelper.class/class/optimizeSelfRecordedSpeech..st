as yet unclassified
optimizeSelfRecordedSpeech: aFileReference
	| filepath optimizedFilepath optimizedFileName cmd |

	"Pegel normalisieren, Hochpassfilter, Stille entfernen, und nach mp3 konvertieren"
	
	filepath := aFileReference filePath.

"	optimizedFilepath := filepath, '.tmp.', (VIAPlatform current extensionOfFile: filepath)."
	optimizedFileName := aFileReference fileName, '.mp3'.
	optimizedFilepath := filepath, '.mp3'.

	aFileReference
		fileName: optimizedFileName;
		clearContentType.
	
	cmd := String streamContents: [:s |
		s << 'ffmpeg -nostats -loglevel warning -y '.
		s << (' -i "', filepath, '" ').
		s << ' -filter:a "highpass=frequency=100,dynaudnorm=s=15:m=50,silenceremove=start_periods=1:start_threshold=-60dB"'.
		
		s << (' "', optimizedFilepath, '" ').
"		s << (' && cp -f ""', optimizedFilepath, '" "', filepath, '""')."
"		s << (' && rm ""', optimizedFilepath, '""')."
		s << (' && rm "', filepath, '"').
	].

	MCLPlatform runShellCommand: cmd