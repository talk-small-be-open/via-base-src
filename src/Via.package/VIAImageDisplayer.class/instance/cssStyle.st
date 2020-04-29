as yet unclassified
cssStyle
"	^String streamContents: [:s |
		maxWidth ifNotBlank: [
			s nextPutAll: 'max-width:'.
			s nextPutAll: maxWidth greaseString.
			s nextPutAll: 'px'].

		maxHeight ifNotBlank: [
			s nextPutAll: 'max-height:'.
			s nextPutAll: maxHeight greaseString.
			s nextPutAll: 'px'].
	]"