rendering-pillar
renderPillarPreviewOn: html
	html pillarString: (self session properties at: #tempPillarPreviewString ifAbsent: [^self])