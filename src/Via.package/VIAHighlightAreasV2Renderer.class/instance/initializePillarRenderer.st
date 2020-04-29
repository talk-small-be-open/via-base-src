as yet unclassified
initializePillarRenderer
	pillarSeasideRenderer := VIAPrCharacterSeasideRenderer new
		markerRenderingBlock: [:marker :html |
			marker acceptRenderingVisitor: self on: html];
		characterRenderingBlock: [:char :html |
			self renderCharacter: char on: html];
		yourself