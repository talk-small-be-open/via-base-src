as yet unclassified
imageUrlCropWidth: aMaxWidth height: aMaxHeight
	^'/', self fileReference fileRelativePath, '/', (self imageNameCropWidth: aMaxWidth height: aMaxHeight)