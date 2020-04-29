as yet unclassified
imageUrlWidth: aWidth
	"Nil-tolerant fallback"
	aWidth ifBlank: [^self imageUrl].

	^'/', self fileReference fileRelativePath, '/', (self imageNameFixWidth: aWidth)