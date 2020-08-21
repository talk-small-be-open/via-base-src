as yet unclassified
renderTextInputLabel: aString value: aValueString callback: aBlock on: html
	html tableRow: [
		html tableData: [html text: aString].
		html tableData: [
			html textInput
				callback: aBlock;
				value: aValueString]]