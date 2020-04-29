rendering-visitor
renderCompositeTask: aCompositeTask on: html
	html div with: [
		aCompositeTask children do: [:each |
			each acceptRenderingVisitor: self on: html]]