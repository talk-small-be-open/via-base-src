as yet unclassified
detectLanguage
	| acceptedLanguage websiteByLanguage |
	acceptedLanguage := self requestContext request acceptLanguage at: 1.

	languageCode := acceptedLanguage value language. "see WALocale"

	websiteByLanguage := self db websites
		detect: [:each | each languageCode = languageCode]
		ifNone: [
			self db websites first.
		].
	
	language := websiteByLanguage language.
	languageCode := websiteByLanguage languageCode.