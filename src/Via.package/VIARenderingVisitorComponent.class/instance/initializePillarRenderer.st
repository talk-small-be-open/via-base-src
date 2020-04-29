initialization
initializePillarRenderer
	pillarSeasideRenderer := VIAPrSeasideRenderer new
		markerRenderingBlock: [:marker :html | html paragraph: 'Ein Marker'];
		yourself