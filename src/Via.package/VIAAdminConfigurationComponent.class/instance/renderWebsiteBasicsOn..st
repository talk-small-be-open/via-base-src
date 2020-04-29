as yet unclassified
renderWebsiteBasicsOn: html
	html heading level3; with: 'Website installation settings'.
	html form: [
		html table: [
			self renderTextInputLabel: 'Domain'
				value: self website domain
				callback: [:incomingValue | self website domain: incomingValue]
				on: html.
			self renderTextInputLabel: 'Title'
				value: self website title
				callback: [:incomingValue | self website title: incomingValue]
				on: html.
			self renderTextInputLabel: 'Code'
				value: self website code
				callback: [:incomingValue | self website code: incomingValue]
				on: html.
			].
		html submitButton: 'Save']