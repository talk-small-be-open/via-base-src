rendering-visitor
renderPillarSnippet: aPillarSnippet on: html
	self renderInputEditorFor: aPillarSnippet on: html with: [
		aPillarSnippet isParseOk ifFalse: [
			self renderPillarSyntaxError: aPillarSnippet parseError on: html.
		].
		self renderPillarInput: #pillarString of: aPillarSnippet on: html]