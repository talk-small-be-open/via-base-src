as yet unclassified
imageNameFixWidth: aWidth
	"Creates a thumbnail in desired width dimension in the same folder and answers the filename of it"
	| thumbnailSuffix |
	thumbnailSuffix := self buildFixedImageWidth: aWidth.
	^self fileReference fileName, thumbnailSuffix.
