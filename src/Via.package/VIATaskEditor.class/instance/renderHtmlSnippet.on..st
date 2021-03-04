rendering-visitor
renderHtmlSnippet: aHtmlSnippet on: html
	self renderInputEditorFor: aHtmlSnippet on: html with: [
		html textArea
			on: #htmlString of: aHtmlSnippet]