accessing
internalLinksAreAllAnchors
	<cocoonParameter:
		'Indicates if, by default, all internal links (i.e., with no "://" inside) should be considered anchors (i.e., links inside the current page).'>
	^ self propertyAt: 'internalLinksAreAllAnchors' default: [ self defaultInternalLinksAreAllAnchors ]