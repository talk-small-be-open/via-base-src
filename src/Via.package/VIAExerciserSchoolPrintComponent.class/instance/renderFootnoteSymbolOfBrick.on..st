rendering
renderFootnoteSymbolOfBrick: aBrick on: html
	aBrick hasHintText ifTrue: [
		self renderFootnoteSymbolOfText: aBrick hintText on: html]