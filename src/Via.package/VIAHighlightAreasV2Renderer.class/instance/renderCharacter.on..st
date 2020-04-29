as yet unclassified
renderCharacter: aChar on: html
	characterCount := characterCount + 1.
	html span
		class: 'selChar';
"		class: ('number', characterCount asString);"
		class: 'highlighted' if: (self isCharHighlightedAt: characterCount);
		with: aChar