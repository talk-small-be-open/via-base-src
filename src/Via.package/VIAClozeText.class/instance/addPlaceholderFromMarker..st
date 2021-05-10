as yet unclassified
addPlaceholderFromMarker: aMarker
	| item markerName |
	markerName := aMarker name.
	
	"Entweder haben wir schon einen solchen Platzhalter im Shelf oder wir erstellen einen neuen"
	item := placeholderShelf at: markerName ifAbsent: [
		| newItem |
		(aMarker content beginsWith: 'c:') ifTrue: [
				newItem := VIASelectOneInput fromMarker: aMarker].
		(aMarker content beginsWith: 'd:') ifTrue: [
				newItem := VIADragDropInput fromMarker: aMarker.
				newItem parentBrick: self].
		newItem ifNil: [
				newItem := VIATextInput fromMarker: aMarker].

		newItem
	].

	placeholders at: markerName put: item