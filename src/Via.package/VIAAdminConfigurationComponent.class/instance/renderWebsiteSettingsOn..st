as yet unclassified
renderWebsiteSettingsOn: html
	html heading level3; with: 'Website settings'.
	html form: [
		html table: [
			self wd properties keys sorted do: [:key |
				self
					renderValue: (self wd propertyAt: key)
					label: key
					setter: [:incomingValue | self wd propertyAt: key put: incomingValue]
					on: html]].
		html submitButton: 'Save']