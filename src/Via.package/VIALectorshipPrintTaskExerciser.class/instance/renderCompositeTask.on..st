rendering-visitor
renderCompositeTask: aCompositeTask on: html
	html div class: 'taskGroup'; with: [
		aCompositeTask children do: [:each |
			html div class: 'taskGroupItem'; with: [
				each acceptRenderingVisitor: self on: html]]]