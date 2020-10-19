rendering
renderFootnoteSymbolOfText: aString on: html
	| symbol |
	symbol := self registerFootnote: aString.

	self renderFootnoteSymbol: symbol on: html