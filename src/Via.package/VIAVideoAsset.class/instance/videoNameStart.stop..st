as yet unclassified
videoNameStart: aStart stop: aStop
	"Creates a fragment in desired length in the same folder and answers the filename of it"
	| thumbnailSuffix |
	thumbnailSuffix := self buildFragmentStart: aStart stop: aStop.
	^self fileReference fileName, thumbnailSuffix.