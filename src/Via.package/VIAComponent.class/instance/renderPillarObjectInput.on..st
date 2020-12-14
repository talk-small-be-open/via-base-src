rendering-pillar
renderPillarObjectInput: aViaPillarObject on: html
	self renderPillarInput: #pillarString of: aViaPillarObject on: html.

	aViaPillarObject isParseOk ifFalse: [
		html div class: 'pillarSyntaxError'; with: [
			html badgeDanger: 'Pillar Syntax Error!'.
			html paragraph: aViaPillarObject parseError]].