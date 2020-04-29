as yet unclassified
addAreaFromMarker: aMarker
	| item markerName |
	markerName := aMarker name.
	
	"Entweder haben wir schon einen solchen Area im Shelf oder wir erstellen einen neuen"
	item := areaShelf at: markerName ifAbsent: [(VIAHighlightArea fromMarker: aMarker)].

	areas at: markerName put: item