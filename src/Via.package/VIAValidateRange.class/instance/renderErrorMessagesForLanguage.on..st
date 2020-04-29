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
		
"errorMessageForLanguage: aLanguage
	| translatedAttributeName |
	translatedAttributeName := self t: self attributeNameKey l: aLanguage.
	self isTooBig ifTrue: [
		^self
			t: #validation:error:_attribute_biggerThan_max_
			p: {#attribute->translatedAttributeName. #max->self maximumValue}
			l: aLanguage].
	self isTooSmall ifTrue: [
		^self
			t: #validation:error:_attribute_smallerThan_min_
			p: {#attribute->translatedAttributeName. #min->self minimumValue}
			l: aLanguage].

	^super errorMessageForLanguage: aLanguage"