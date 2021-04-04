rendering
renderContentOn: html
	html strong: 'List of used texts, latest first'.
	html span: ' | '.
	html anchor
		callback: [ self clearCache ];
		with: 'Refresh this list of texts'.
	html span: ' | '.
	html anchor
		callback: [ self insertKeysInText ];
		with: 'Add guiding keys inline'.
	html table style: 'margin-top: 0.5em; margin-bottom: 3em'; with: [ 
		self session cachedUiTextKeys reverseDo: [ :each |
			html tableRow: [ 
				html tableData: [ 
					html anchor
						callback: [ self select: each ];
						with: each ].
				html tableData: [
					html text: (VIAHelper pillarStringFromPillar: (self db uiTextAt: each language: self currentLanguage)).
"					html pT: each"
				].
	]]]