as yet unclassified
renderErrorMessagesForLanguage: aLanguage on: html
	"Standard implementation with a basic meaningful error message"
	| translatedAttributeName |
	translatedAttributeName := self attributeNameKey tl: aLanguage.
	
	html
		t: 'validation:error:_attribute_mustBeGivenCorrectly'
		l: aLanguage
		p: {#attribute->translatedAttributeName}

