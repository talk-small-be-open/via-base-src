as yet unclassified
imageUrlWidth: aMaxWidth height: aMaxHeight
	^'/', self fileReference fileRelativePath, '/', (self imageNameMaxWidth: aMaxWidth maxHeight: aMaxHeight)