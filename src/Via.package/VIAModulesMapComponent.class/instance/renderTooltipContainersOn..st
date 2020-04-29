rendering
renderTooltipContainersOn: html
	html div style: 'display:none'; with: [
		self modules do: [:each |
			html div id: (self miniCardIdForModule: each); with: [
				cardRenderer renderModule: each on: html
			]
		]
	]