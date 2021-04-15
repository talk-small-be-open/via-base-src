rendering
renderContentOn: html
	html strong: 'List of used texts, latest first'.
	html break.
	html anchor
		callback: [ self clearCache ];
		with: 'Restart collecting texts'.
	html span: ' | '.
	html anchor
		callback: [ self insertKeysInText ];
		with: 'Show keys in texts'.
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