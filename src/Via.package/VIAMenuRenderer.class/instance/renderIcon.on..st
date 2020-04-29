as yet unclassified
renderIcon: aMenuEntry on: html
	aMenuEntry icon ifNotBlank: [:i |
		| selector |
		selector := (#icon, i capitalized) asSymbol.
		(html respondsTo: selector) ifTrue: [
			html perform: selector.
			html space
		]
	]
