as yet unclassified
cssColorForCorrectness: aPercentInteger
	"Von grau - grün. Grau = ohne Beurteilung, absent"
	| hue sat percent |
	percent := aPercentInteger min: 100.
	hue := (0 + (((percent/100) * 120) rounded)) max: 60.
	sat := (maxSaturation * percent/50) rounded min: maxSaturation.

	^'hsl(', hue asString, ', ', sat asString, '%, ', maxLight asString, '%)'