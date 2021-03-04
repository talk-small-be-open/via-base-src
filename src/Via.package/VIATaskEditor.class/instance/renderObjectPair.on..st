rendering-visitor
renderObjectPair: anObjectPair on: html
	self renderInputEditorFor: anObjectPair on: html with: [
		html span: 'Hint: '.
		html textArea
			on: #hintText of: anObjectPair.
		html div: 'Left'.
		anObjectPair leftPillar acceptRenderingVisitor: self on: html.
		html div: 'Right'.
		anObjectPair rightPillar acceptRenderingVisitor: self on: html]