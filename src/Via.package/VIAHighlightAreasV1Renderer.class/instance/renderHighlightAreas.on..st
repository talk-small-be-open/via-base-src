as yet unclassified
renderHighlightAreas: aHighlightAreas on: html
	| jsStoreHandler jsRestoreHandler rangySerialization id |
	
	rangySerialization := self exercise answer: #rangySerialization of: aHighlightAreas.
	
	"Übergeordneter Handler bei Markierung. (Jeder Markierstelle hat noch einen eigenen)"
	jsStoreHandler := ((html jQuery ajax
		callback: [:value | rangySerialization value: value]
		value: (JSStream on: 'highlighter.serialize()');
		onError: (html javascript alert: 'Fehler beim Speichern der Markierung!')))
			asFunction: #(event newHighlights highlighter).

	rangySerialization value ifNotBlank: [:serialization |
		jsRestoreHandler := ('console.log("',serialization,'"); highlighter.deserialize("', serialization, '")') asFunction: #(event highlighter)].
	
	html div
		class: 'highlightAreas';
		id: (id := html nextId);
		script: (html jQuery this on: 'via:highlight' do: jsStoreHandler);		
		script: (html jQuery this on: 'via:unhighlight' do: jsStoreHandler);		
		script: (jsRestoreHandler ifNotNil: [(html jQuery this on: 'via:restoreHighlights' do: jsRestoreHandler)]);
		script: (JSStream on: 'highlightAreas_setup("', id ,'")');
		with: [
			pillarSeasideRenderer
				seasideHtmlCanvas: html;
				markerRenderingBlock: [:marker :h |
					| area |
					area := aHighlightAreas areaForMarker: marker.
					area acceptRenderingVisitor: self on: h];
				start: aHighlightAreas pillarDocument]