uikit
ukWidth: aFraction
	^self div
		class: 'uk-width-', aFraction numerator asString, '-', aFraction denominator asString;
		yourself