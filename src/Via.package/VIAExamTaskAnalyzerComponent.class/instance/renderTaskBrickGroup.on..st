rendering-visitor
renderTaskBrickGroup: aTaskBrickGroup on: html
	html div: aTaskBrickGroup title.
	html div
		class: 'taskGroup taskBrickGroup';
		with: [
			aTaskBrickGroup children do: [:each |
				html div class: 'taskGroupItem'; with: [
					each acceptRenderingVisitor: self on: html]]]