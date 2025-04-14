rendering
renderProgressLegendOn: html
	html div class: 'legend'; with: [ 
		html div pT: 'tocca:legend:progress'.
		1 to: 3 do: [ :index |
			html div: [
				html t: ('tocca:legend:progress', index asString).
				html space.
				html iconProgress: index ].
		].
		html div pT: 'tocca:legend:colorInfo'.
	]