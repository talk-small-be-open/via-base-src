rendering-visitor
renderObjectPair: anObjectPair on: html
	html div class: 'inputEditor'; with: [
		html span: 'Hint: '.
		html textArea
			on: #hintText of: anObjectPair.
		html div: 'Left'.
		anObjectPair leftPillar acceptRenderingVisitor: self on: html.
		html div: 'Right'.
		anObjectPair rightPillar acceptRenderingVisitor: self on: html]