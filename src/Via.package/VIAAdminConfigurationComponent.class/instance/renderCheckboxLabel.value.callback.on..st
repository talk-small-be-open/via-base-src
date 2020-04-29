as yet unclassified
renderCheckboxLabel: aString value: aValue callback: aBlock on: html
	html tableRow: [
		html tableData: [html text: aString; text: ': '].
		html tableData: [
			html checkbox
				callback: aBlock;
				value: aValue]]