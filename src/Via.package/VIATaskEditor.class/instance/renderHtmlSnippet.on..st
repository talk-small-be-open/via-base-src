rendering-visitor
renderHtmlSnippet: aHtmlSnippet on: html
	html div class: 'inputEditor'; with: [
		html textArea
			on: #htmlString of: aHtmlSnippet]