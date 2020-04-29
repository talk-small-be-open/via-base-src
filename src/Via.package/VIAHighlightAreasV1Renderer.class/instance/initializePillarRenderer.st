as yet unclassified
initializePillarRenderer
	pillarSeasideRenderer := VIAPrSeasideRenderer new
		markerRenderingBlock: [:marker :html |
			marker acceptRenderingVisitor: self on: html];
		yourself