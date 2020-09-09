as yet unclassified
renderIntegerLabel: aString value: aValue callback: aBlock on: html
	html tableRow: [
		html tableData: [html text: aString].
		html tableData: [
			html numberInput
				callback: [:value | aBlock value: value asInteger ];
				value: aValue asString]]