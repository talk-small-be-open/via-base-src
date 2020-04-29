rendering-visitor
renderPillarSnippet: aPillarSnippet on: html
	html div class: 'inputEditor'; with: [
		aPillarSnippet isParseOk ifFalse: [
			self renderPillarSyntaxError: aPillarSnippet parseError on: html.
		].
		self renderPillarInput: #pillarString of: aPillarSnippet on: html]