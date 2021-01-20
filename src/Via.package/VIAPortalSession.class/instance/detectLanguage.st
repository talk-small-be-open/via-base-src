as yet unclassified
detectLanguage
	| acceptedLanguage websiteByLanguage |
	languageCode := 'unknown'.
	
	self requestContext request acceptLanguage ifNotNil: [ :col |
		acceptedLanguage := col at: 1.
		languageCode := acceptedLanguage value language. "see WALocale" ].

	websiteByLanguage := self db websites
		detect: [:each | each languageCode = languageCode]
		ifNone: [
			self db websites first.
		].
	
	language := websiteByLanguage language.
	languageCode := websiteByLanguage languageCode.