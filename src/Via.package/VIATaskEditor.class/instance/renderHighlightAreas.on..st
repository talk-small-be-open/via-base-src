rendering-visitor
renderHighlightAreas: aHighlightAreas on: html
	self renderInputEditorFor: aHighlightAreas on: html with: [
"		html heading level2; with: 'Mark text'."
		self renderOn: html quickHelp: 'Enter text with _underscore_ marked ranges in pillar syntax. After saving, you get more actions for each range.'.

		aHighlightAreas isParseOk ifFalse: [
			self renderPillarSyntaxError: aHighlightAreas parseError on: html.
		].
	
		self renderPillarInput: #pillarString of: aHighlightAreas cssClass: 'highlightAreas' on: html.

"		aHighlightAreas isPassiveMode ifFalse: [
			html badge: 'passive mode'.
			html span: 'You have not defined any highlight areas. The task will be just for highlighting but there will be no correction.' ]."
		
		aHighlightAreas areas do: [:each |
			each acceptRenderingVisitor: self on: html].

		aHighlightAreas orphanedAreas ifNotBlank: [ :oas |
			html strong: 'Elemente im Papierkorb: '.
			oas do: [ :each |
				html span selectOnClick; with: ('_', each code, '_')
			] separatedBy: [ html space ]
		]		
	]