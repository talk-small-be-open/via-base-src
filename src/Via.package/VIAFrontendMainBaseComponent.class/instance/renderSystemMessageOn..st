rendering
renderSystemMessageOn: html
	(self db propertyAt: #frontendSystemMessage) ifNotBlank: [:string |
		html div class: 'uk-margin uk-container uk-container-expand systemMessage'; with: [
			html ukAlertDanger: [
				html iconWarning; space.
				html pillarString: string]]]