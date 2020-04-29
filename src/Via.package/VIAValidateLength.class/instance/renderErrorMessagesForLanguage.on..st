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
	self isTooLong ifTrue: [
		^self
			t: #validation:error:_attribute_longerThan_max_
			p: {#attribute->translatedAttributeName. #max->maximum}
			l: aLanguage].
	self isTooShort ifTrue: [
		^self
			t: #validation:error:_attribute_shorterThan_min_
			p: {#attribute->translatedAttributeName. #min->minimum}
			l: aLanguage].

	^super errorMessageForLanguage: aLanguage"