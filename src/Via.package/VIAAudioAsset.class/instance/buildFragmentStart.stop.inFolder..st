as yet unclassified
buildFragmentStart: aStart stop: aStop inFolder: aTargetFolder
	"Creates a audio excerpt, if file does not exist yet."

	| filepath audioFragmentFilepath cmd suffix startText stopText |
	
	startText := (aStart ifBlank: ['start']) greaseString.
	stopText := (aStop ifBlank: ['end']) greaseString.

	filepath := self fileReference filePath.
	suffix := '_', startText, '_', stopText, '.', (self fileReference fileExtension).

	audioFragmentFilepath := aTargetFolder, '/', self fileReference fileName, suffix.

	(VIAPlatform current fileExists: audioFragmentFilepath) ifFalse: [
		cmd := String streamContents: [:s |
			s nextPutAll: 'ffmpeg -nostats -loglevel warning -y '.
			aStart ifNotBlank: [
				s nextPutAll: '-ss ', aStart greaseString].
			s nextPutAll: ' -i "', filepath, '" '.
			aStop ifNotBlank: [
				s nextPutAll: ' -t ', (aStop - (aStart ifNil: [0])) greaseString].
			s nextPutAll: ' -acodec copy "', audioFragmentFilepath, '"'].

		MCLPlatform runShellCommand: cmd].

	^suffix