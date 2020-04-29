as yet unclassified
cssColorForTricolorCorrectness: aPercentInteger
	^self cssColorForTricolorWrongness: ((100 - aPercentInteger) max: 0)