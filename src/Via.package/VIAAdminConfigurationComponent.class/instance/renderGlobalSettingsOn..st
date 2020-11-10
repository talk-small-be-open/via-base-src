as yet unclassified
renderGlobalSettingsOn: html
	html heading level3; with: 'Global settings'.
	html form: [
		html table: [
			self db properties keys sorted do: [:key |
				self
					renderValue: (self db propertyAt: key)
					label: key
					setter: [:incomingValue | self db propertyAt: key put: incomingValue]
					on: html]].
		html submitButton: 'Save'].

	html div class: 'bottomBuffer'; with: [
		html anchor
			callback: [self useLocalSmtp];
			with: 'Use localhost SMTP'.
		html break.	
		html anchor
			callback: [self installSmtpConfig];
			with: 'Install SMTP config (if you changed SMTP above)'.
		html break; break.	
	]