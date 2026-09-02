rendering
renderMoreInfosFor: aModule on: html
	html div class: 'moreInfos'; with: [

		html text: 'Started in portfolios: '.
		html text: (self countInWork: aModule) asString.
		html break.
		html text: 'Finished in portfolios: '.
		html text: (self countFinished: aModule) asString.
	
	]