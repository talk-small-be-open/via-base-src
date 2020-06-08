as yet unclassified
renderCheckboxLabel: aString value: aValue callback: aBlock on: html
	html tableRow: [
		html tableData: [html text: aString].
		html tableData: [
			html checkbox
				callback: aBlock;
				value: aValue]]