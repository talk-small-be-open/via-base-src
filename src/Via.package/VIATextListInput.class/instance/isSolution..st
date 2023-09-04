as yet unclassified
isSolution: aValue
	| standardized |
	standardized := (VIAHelper standardizeCharacters: aValue) trimBoth.
	
	^ self solutions includes: standardized