rendering
renderUserToolbarOn: html
	html div class: 'bottomBuffer topBuffer'; with: [
		model properties keysAndValuesDo: [ :key :value |
			html div: [ html span: key. html text: ' = '. html span: value ] ].

		html anchor
			callback: [ self resetProperties ];
			with: 'RESET-PROPERTIES' ]