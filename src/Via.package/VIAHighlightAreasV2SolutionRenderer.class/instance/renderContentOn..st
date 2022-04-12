as yet unclassified
renderContentOn: html
	
	self start.

	html div
		class: 'highlightAreas';
		class: taskBrick uiStyle;
		class: 'checked' if: (taskBrick isCheckable and: [self exercise isChecked]);

		with: [
			pillarSeasideRenderer
				seasideHtmlCanvas: html;
				markerRenderingBlock: [:marker :h |
					| area |
					area := taskBrick areaForMarker: marker.
					area acceptRenderingVisitor: self on: h];
				start: taskBrick pillarDocument.
	]