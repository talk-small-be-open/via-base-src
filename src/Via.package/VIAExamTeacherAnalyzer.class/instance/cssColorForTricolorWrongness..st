as yet unclassified
cssColorForTricolorWrongness: aPercentInteger
	"Von grün über orange zu rot"
	| hue percent |
	percent := aPercentInteger min: 100.
	hue := 120 - (((percent/100) * 120) rounded).

	^'hsl(', hue asString, ', ', maxSaturation asString, '%, ', maxLight asString, '%)'