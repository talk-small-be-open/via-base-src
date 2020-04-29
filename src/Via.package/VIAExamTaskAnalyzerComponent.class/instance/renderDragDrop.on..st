rendering-visitor
renderDragDrop: aDragDropInput on: html
	self renderAnalyticsBoxOf: aDragDropInput on: html with: [
		html span
			class: 'dragDropTarget';
			with: [
				aDragDropInput solutions do: [:each |
					html span: each object] separatedBy: [html span: ' / ' ]
			].
	]