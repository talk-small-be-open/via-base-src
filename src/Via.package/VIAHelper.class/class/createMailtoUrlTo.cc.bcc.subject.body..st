as yet unclassified
createMailtoUrlTo: aToCollection cc: aCcCollection bcc: aBccCollection subject: aString body: aBodyString
	| to cc bcc mailto |
	
	to := aToCollection asOrderedCollection copyWithoutBlanks sorted.
	cc := aCcCollection asOrderedCollection copyWithoutBlanks sorted.
	bcc := aBccCollection asOrderedCollection copyWithoutBlanks sorted.

	mailto := String streamContents: [:s |
		s nextPutAll: 'mailto:'.
		to ifNotEmpty: [
			s nextPutAll: (to joinUsing: ',')].

		s nextPutAll: '?abc'.
		
		cc ifNotEmpty: [
			s nextPutAll: '&cc='.
			s nextPutAll: (cc joinUsing: ',') ].

		bcc ifNotEmpty: [
			s nextPutAll: '&bcc='.
			s nextPutAll: (bcc joinUsing: ',') ].
		
		aString ifNotBlank: [
			s nextPutAll: '&subject='.
			s nextPutAll: (self urlencode: aString)].

		aBodyString ifNotBlank: [
			s nextPutAll: '&body='.
			s nextPutAll: (self urlencode: aBodyString)].
		
		].

	^mailto