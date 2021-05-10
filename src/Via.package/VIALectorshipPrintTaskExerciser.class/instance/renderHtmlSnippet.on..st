rendering-visitor
renderHtmlSnippet: aHtmlSnippet on: html
	html span class: 'htmlSnippet'; with: [
		html div: [
			html iconHtmlCode; space.
			html text: 'HTML SOURCE CODE'].
		html preformatted: aHtmlSnippet htmlString
	]