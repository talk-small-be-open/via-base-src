rendering-visitor
renderHighlightAreas: aHighlightAreas on: html
	html div class: 'inputEditor'; with: [
		html heading level2; with: 'Mark text'.
		self renderOn: html quickHelp: 'Text with _underscore_ marked ranges in pillar syntax. After saving, you get more actions for each range.'.

		aHighlightAreas isParseOk ifFalse: [
			self renderPillarSyntaxError: aHighlightAreas parseError on: html.
		].
	
		self renderPillarInput: #pillarString of: aHighlightAreas cssClass: 'highlightAreas' on: html.
			
		aHighlightAreas areas do: [:each |
			each acceptRenderingVisitor: self on: html]]