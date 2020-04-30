accessing
textMatcher
	^ TextMatcher ifNil: [ TextMatcher := self buildTextMatcher ]