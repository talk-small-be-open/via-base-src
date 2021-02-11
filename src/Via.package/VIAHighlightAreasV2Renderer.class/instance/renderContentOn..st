as yet unclassified
renderContentOn: html
	| id jsEventHandler inputId |
	
	self addJavascript: '/js/outofthebox/highlight_areas_v2.js' on: html.
	
	self start.

"	highlightedCharsMap := self exercise answer: #highlightedCharsMap of: taskBrick."
"	highlightedCharsMap inspect."
	inputId := html nextId.

	jsEventHandler := (html jQuery ajax
		callback: [:value | self highlightedCharsMap: value]
		value: (JSStream on: ( '$("#', inputId asString, '").val()' ) );
		onError: (html javascript alert: 'Fehler beim Speichern der Markierung!'))
			asFunction: #(event).
			

	html div
		class: 'highlightAreas';
		class: 'firstTake' if: self exercise isFirstTake; "obsolete?"
		id: (id := html nextId);

		script: ((html jQuery id: id) dataAt: 'allSelChars' put: ((html jQuery id: id) find: 'span.selChar'));

		script: ((html jsInteract: 'span.selChar') dropzone
			onDragLeave: (('highlightAreas_onDragLeave(event, "', id, '")') asFunction: #(event));
			onDragEnter: (('highlightAreas_onDragEnter(event, "', id, '")') asFunction: #(event))
		);

		script: ((html jsInteract: 'span.selChar') draggable
			hold: 100;
			onStart: (('highlightAreas_onStart(event, "', id, '")') asFunction: #(event));
			onMove: ('"Dummy doing nothing prevent warning"' asFunction: #(event));
			onEnd: (('highlightAreas_onEnd(event, "', id, '")') asFunction: #(event)));
			
		script: (html jQuery this on: 'via:highlightchanged' do: jsEventHandler );

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
				id: inputId;
				class: 'charsMap';
				style: 'display: none';
				on: #highlightedCharsMap of: self
	]