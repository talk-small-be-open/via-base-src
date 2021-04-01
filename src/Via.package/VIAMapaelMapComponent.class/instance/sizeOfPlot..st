as yet unclassified
sizeOfPlot: aGeocode
	| factor |
	
	factor := ((20 // (self plotsCount max: 1))) min: 3 max: 0.5.
	
	^ (aGeocode size * factor) asInteger