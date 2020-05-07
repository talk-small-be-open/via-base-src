as yet unclassified
renderDragDrop: aDragDropInput on: html

	self renderHintSymbolOf: aDragDropInput on: html.

	html span
		class: 'dragDropTarget';
		with: [
			aDragDropInput solutions do: [:each |
				self renderDragDropDraggable: each on: html]].