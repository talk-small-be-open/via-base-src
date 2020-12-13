as yet unclassified
renderMailingSettingsOn: html
	| mc |
	mc := self wd mailingConfiguration.
	
	html heading level3; with: 'Mailing settings'.
	html form: [
		html table: [
			self
				renderValue: mc globalEnabled
				label: 'Global'
				setter: [:incomingValue | mc globalEnabled: incomingValue ]
				on: html.

			mc channelInfoDo: [:id :uiKey :enabled |
				self
					renderValue: enabled
					label: uiKey
					setter: [:incomingValue | mc channel: id enabled: incomingValue ]
					on: html]].
		html submitButton: 'Save'
	]