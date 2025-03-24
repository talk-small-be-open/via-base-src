uikit
ukIcon: anIconName scale: aFactor
	^ self span
		a: 'uk-icon' p: ('icon:', anIconName, '; ratio:', aFactor asString);
		yourself