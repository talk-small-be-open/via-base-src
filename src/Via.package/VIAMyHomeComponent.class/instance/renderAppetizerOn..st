rendering
renderAppetizerOn: html
	html ukContainer: [
"			html heading level4; class: 'appetizerTitle'; t: 'publicHome:appetizerTitle'."
		self renderFeaturedModulesOn: html.
"			html heading level4; class: 'appetizerTitle'; t: 'publicHome:latestModules'.
		self renderLatestModulesOn: html."
		showMap ifTrue: [
"				html heading level4; class: 'appetizerTitle'; t: 'publicHome:swissMap'."
			html break; break; break.
			self renderMapsOn: html]
	]