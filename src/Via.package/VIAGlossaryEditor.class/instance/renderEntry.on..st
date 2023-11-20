rendering
renderEntry: aGlossaryEntry on: html
	| snippet |
	
	snippet := aGlossaryEntry description.
	
	html tableData: [
		html textInput
			on: #title of: aGlossaryEntry ].
	html tableData: [
		snippet isParseOk ifFalse: [
			html div class: 'pillarSyntaxError'; with: [
				html badgeDanger: 'Pillar Syntax Error!'.
"				html paragraph: snippet parseError" ]
		].
		self renderPillarInput: #pillarString of: snippet on: html
	]