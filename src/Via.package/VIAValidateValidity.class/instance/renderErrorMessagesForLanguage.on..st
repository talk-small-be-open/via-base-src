as yet unclassified
renderErrorMessagesForLanguage: aLanguage on: html
	"Standard implementation with a basic meaningful error message"
	| translatedAttributeName |
	translatedAttributeName := self attributeNameKey tl: aLanguage.

	self shouldBeImplemented.
	
	html
		t: 'validation:error:_attribute_hasWrongFormat'
		l: aLanguage
		p: {#attribute->translatedAttributeName}

"	preamble := self t: #validation:error:_attribute_notValid p: {#attribute->translatedAttributeName} l: aLanguage.
		
	messages := self validationResult failedRules collect: [:each| each errorMessageForLanguage: aLanguage].
	^preamble, ': ', (MCLPlatform joinCollection: messages delimiter: '. ').
	
"