as yet unclassified
createMailtoUrlTo: aToCollection cc: aCcCollection bcc: aBccCollection subject: aString body: aBodyString
	| to cc bcc mailto |
	
	to := aToCollection asOrderedCollection copyWithoutBlanks sorted.
	cc := aCcCollection asOrderedCollection copyWithoutBlanks sorted.
	bcc := aBccCollection asOrderedCollection copyWithoutBlanks sorted.

	mailto := String streamContents: [:s |
		| delim |
		
		s nextPutAll: 'mailto:'.
		to ifNotEmpty: [
			s nextPutAll: (MCLPlatform joinCollection: to delimiter: ',')].

		s nextPutAll: '?'.
		
		delim := ''.		
		cc ifNotEmpty: [
			s nextPutAll: delim. delim := '&'.
			s nextPutAll: 'cc='.
			s nextPutAll: (MCLPlatform joinCollection: cc delimiter: ',') ].

		bcc ifNotEmpty: [
			s nextPutAll: delim. delim := '&'.
			s nextPutAll: 'bcc='.
			s nextPutAll: (MCLPlatform joinCollection: bcc delimiter: ',') ].
		
		aString ifNotBlank: [
			s nextPutAll: delim. delim := '&'.
			s nextPutAll: 'subject='.
			s nextPutAll: (self urlencode: aString)].

		aBodyString ifNotBlank: [
			s nextPutAll: delim. delim := '&'.
			s nextPutAll: 'body='.
			s nextPutAll: (self urlencode: aBodyString)].
		].

	^mailto