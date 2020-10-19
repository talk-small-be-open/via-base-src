rendering-visitor
renderDragDrop: aDragDropInput on: html

	self renderHintSymbolOf: aDragDropInput on: html.

	html span
		class: 'dragDropTarget';
		with: [
			aDragDropInput solutions do: [:each |
				html span
					class: 'dragDropDraggable';
					with: [html pillarString: each object]]]