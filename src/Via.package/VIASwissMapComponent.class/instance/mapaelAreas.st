as yet unclassified
mapaelAreas
	| areas |
	areas := Dictionary new.
	areas at: 'areaFr' put: {'tooltip'->{'content'->('swissMap:frenchPart't)}aD }aD.
	areas at: 'areaIt' put: {'tooltip'->{'content'->('swissMap:italianPart't)}aD }aD.
	areas at: 'areaRo' put: {'tooltip'->{'content'->('swissMap:romancePart't)}aD }aD.
	areas at: 'countryBorder' put: {'tooltip'->{'content'->('swissMap:germanPart't)}aD }aD.
	^ areas