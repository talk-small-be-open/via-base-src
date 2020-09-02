rendering
renderHelpOn: html
"	html modalTitle: 'Pillar Syntax' anchor: 'Help on Pillar syntax' with: [
		self renderPillarSyntaxHelpOn: html].
	html space."
	html anchor
		callback: [ self openPillarTester ];
		with: 'Pillar Syntax Help'