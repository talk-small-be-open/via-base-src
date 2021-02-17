as yet unclassified
renderWebsiteBasicsOn: html
	html heading level3; with: 'Website installation settings'.
	html form: [
		html table: [
			self renderValue: self website domain label: 'Domain' setter: [:incomingValue | self website domain: incomingValue] on: html.
			self renderValue: self website aliasDomainsString label: 'Alias domains' setter: [:incomingValue | self website aliasDomainsString: incomingValue] on: html.
			self renderValue: self website title label: 'Title' setter: [:incomingValue | self website title: incomingValue] on: html.
			self renderValue: self website code label: 'Code' setter: [:incomingValue | self website code: incomingValue] on: html.
			self renderValue: self website sortKey label: 'Sort' setter: [:incomingValue | self website sortKey: incomingValue] on: html.
		].
		html submitButton: 'Save']