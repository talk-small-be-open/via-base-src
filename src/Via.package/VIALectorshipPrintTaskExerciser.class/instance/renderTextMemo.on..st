rendering-visitor
renderTextMemo: aTextMemo on: html
	html div
		class: 'textMemo';
		with: [
			aTextMemo infoPillar acceptRenderingVisitor: self on: html.
		].

"no hint	self renderFootnoteSymbolOfBrick: aPlaceholder on: html"