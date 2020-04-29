as yet unclassified
imageNameMaxWidth: aMaxWidth maxHeight: aMaxHeight
	"Creates a thumbnail in desired maximum dimension in the same folder and answers the filename of it"
	| thumbnailSuffix |
	thumbnailSuffix := self buildScaledImageWidth: aMaxWidth height: aMaxHeight.
	^self fileReference fileName, thumbnailSuffix.
