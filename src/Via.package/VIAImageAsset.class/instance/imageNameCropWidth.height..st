as yet unclassified
imageNameCropWidth: aWidth height: aHeight
	"Creates a thumbnail in desired maximum dimension in the same folder and answers the filename of it"
	| thumbnailSuffix |
	thumbnailSuffix := self buildCroppedImageWidth: aWidth height: aHeight.
	^self fileReference fileName, thumbnailSuffix.
