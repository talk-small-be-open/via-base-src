as yet unclassified
postCopy
	| newAreas |
	super postCopy.

	pillarDocument := pillarDocument copy.

	newAreas := areas species new.
	areas keysAndValuesDo: [:markerName :item |
		newAreas at: markerName put: item copy
	].
	areas := newAreas.


"	pillarString"

	areaShelf := nil.
	lastParsedAt := nil