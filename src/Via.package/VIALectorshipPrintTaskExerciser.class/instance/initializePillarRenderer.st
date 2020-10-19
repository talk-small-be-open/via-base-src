initialization
initializePillarRenderer
	pillarSeasideRenderer := VIAPrPrintSeasideRenderer new
		markerRenderingBlock: [:marker :html | marker acceptRenderingVisitor: self on: html];
		yourself