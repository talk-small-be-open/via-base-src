rendering-visitor
renderDragDrop: aDragDropInput on: html

	self renderHintSymbolOf: aDragDropInput on: html.

	html span
		class: 'dragDropTarget';
		with: [
			aDragDropInput choices do: [:each |
				html span
					class: 'solution' if: (aDragDropInput isSolution: each);
					class: 'dragDropDraggable';
					with: [html pillarString: each object]]]