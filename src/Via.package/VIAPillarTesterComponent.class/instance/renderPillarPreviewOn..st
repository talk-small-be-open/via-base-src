rendering-pillar
renderPillarPreviewOn: html
	parseError
		ifNotNil: [ 
			html badgeWarning: 'Syntax Error'.
			html paragraph: parseError ]
		ifNil: [ 	html pillar: pillarDocument ]
