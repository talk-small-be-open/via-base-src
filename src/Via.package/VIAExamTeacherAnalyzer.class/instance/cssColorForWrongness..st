as yet unclassified
cssColorForWrongness: aPercentInteger
	"Von grau - rot. Grau = ohne Beurteilung, absent"

	| hue sat percent |
	percent := aPercentInteger min: 100.
	hue := (120 - (((percent/100) * 120) rounded)) min: 60.
	sat := (maxSaturation * percent/50) rounded min: maxSaturation.

	^'hsl(', hue asString, ', ', sat asString, '%, ', maxLight asString, '%)'