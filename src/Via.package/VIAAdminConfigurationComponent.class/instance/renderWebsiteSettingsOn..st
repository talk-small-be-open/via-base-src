as yet unclassified
renderWebsiteSettingsOn: html
	html heading level3; with: 'Website settings'.
	html form: [
		html table: [
			self wd properties keys sorted do: [:key |
				| value |
				value := self wd propertyAt: key.
				(value isString or: [value isNil]) ifTrue: [
					self renderTextInputLabel: key
						value: value
						callback: [:incomingValue | self wd propertyAt: key put: incomingValue]
						on: html.
				].
				(value isKindOf: Boolean) ifTrue: [
					self renderCheckboxLabel: key
						value: value
						callback: [:incomingValue | self wd propertyAt: key put: incomingValue]
						on: html.
				].
			]].
		html submitButton: 'Save']