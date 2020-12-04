rendering
renderSystemMessageOn: html
	(self db propertyAt: #backendSystemMessage) ifNotBlank: [:string |
		html div class: 'systemMessage'; with: [
			html pillarString: string]]