as yet unclassified
renderContentOn: html
	| id |
	
	self start.

	highlightedCharsMap := self exercise answer: #highlightedCharsMap of: taskBrick.

"	inputId := html nextId."

	html div
		class: 'highlightAreas';
		class: 'firstTake' if: self exercise isFirstTake;
		id: (id := html nextId);

		script: ((html jQuery id: id) dataAt: 'allSelChars' put: ((html jQuery id: id) find: 'span.selChar'));

		script: ((html jsInteract: 'span.selChar') dropzone
			onDragEnter: (('highlightAreas_onDragEnter(event, "', id, '")') asFunction: #(event));
			onDrop: (('highlightAreas_onDrop(event, "', id, '", "', notHighlightedSymbol asString, '")') asFunction: #(event))
		);

		script: ((html jsInteract: 'span.selChar') draggable
			onMove: ('"Dummy doing nothing prevent warning"' asFunction: #(event));
			onEnd: (('highlightAreas_onEnd(event, "', id, '")') asFunction: #(event)));

		onClick: ('highlightAreas_onClick(event, "', id, '")' asFunction: #(event));
		
		with: [
			pillarSeasideRenderer
				seasideHtmlCanvas: html;
				markerRenderingBlock: [:marker :h |
					| area |
					area := taskBrick areaForMarker: marker.
					area acceptRenderingVisitor: self on: h];
				start: taskBrick pillarDocument.
	
			html textInput
"				id: inputId;"
				class: 'charsMap';
				style: 'display: none';
				on: #value of: highlightedCharsMap
	]