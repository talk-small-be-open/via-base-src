as yet unclassified
postCopy
	| newPlaceholders |
	super postCopy.

"	clozeTemplateString"
	placeholderShelf := nil.
	lastParsedAt := nil.
"	parseOk"
	
	newPlaceholders := placeholders species new.
	placeholders keysAndValuesDo: [:markerName :item |
		newPlaceholders at: markerName put: item copy
	].
	placeholders := newPlaceholders.
	
	pillarDocument := pillarDocument copy.
	
	"Parent Referenz aktualisieren"
	(placeholders values select: [:each | each isKindOf: VIADragDropInput]) do: [:each |
		each parentBrick: self]