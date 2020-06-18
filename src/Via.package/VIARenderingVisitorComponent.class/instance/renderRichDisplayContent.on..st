rendering-visitor
renderRichDisplayContent: aRichDisplayContent on: html
	aRichDisplayContent children do: [ :each |
		each acceptRenderingVisitor: self on: html.
	].