as yet unclassified
renderGlobalSettingsOn: html
	html heading level3; with: 'Global settings'.
	html form: [
		html table: [
			self db properties keys sorted do: [:key |
				| value |
				value := self db propertyAt: key.
				value isString ifTrue: [
					self renderTextInputLabel: key
						value: value
						callback: [:incomingValue | self db propertyAt: key put: incomingValue]
						on: html.
				]]].
		html submitButton: 'Save'].

	html div class: 'bottomBuffer'; with: [
		html anchor
			callback: [self installSmtpConfig];
			with: 'Install SMTP config (if you changed SMTP above)'.
		html break; break.	
			
			]