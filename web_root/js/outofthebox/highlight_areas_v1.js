// Rangy Library
// TODO: Obsolete?

function highlightAreas_removeHighlight(element) {
	var highlightAreas = $(element).closest('div.highlightAreas');
	var highlighter = highlightAreas.data('highlighter');
	var highlights;
	
	var range = rangy.createRange();
	range.selectNode(element);
	highlights = highlighter.getIntersectingHighlights([range]);
  highlighter.removeHighlights(highlights);

	
	// Notifikation
	highlightAreas.trigger('via:unhighlight', [null, highlighter]);
}

function highlightAreas_setup(elementId) {

	var element = $('#' + elementId);
	var highlighter;
	var highlightStyleApplier;

	rangy.init();

	highlightStyleApplier = rangy.createClassApplier("selectedText", {
		tagNames: ['span', 'strong', 'em', 'b'], // Muss explizit sein, kein *
		elementAttributes: {onclick: 'highlightAreas_removeHighlight(this)'},
		normalize: true, // Benachbarte zusammenfassen
		ignoreWhiteSpace: true,
		onElementCreate: function(element, classApplier){},
		useExistingElements: true
	});

	highlighter = rangy.createHighlighter(null, 'TextRange');
	highlighter.addClassApplier(highlightStyleApplier);

	element.data('highlighter', highlighter);

	// Mouse-Up Handler, NACH dem evt. markieren
	element.bind("pointerup", function(){
		var selection = rangy.getSelection();
		selection.trim();
		
		var range = selection.getRangeAt(0);
		var newHighlights;
		var newHighlight;

		if (range.collapsed) {
			return
		}

		// Trim range white spaces
		
		
		newHighlights = highlighter.highlightSelection('selectedText', {containerElementId: elementId, exclusive: true});
		newHighlight = newHighlights[0];

		var leftArea = $(range.startContainer).closest("span.highlightArea");
		var rightArea = $(range.endContainer).closest("span.highlightArea");

		// Test, ob innerhalb Markierzone geklickt wurde
		if (leftArea[0] && (leftArea[0] == rightArea[0])) {
			leftArea.trigger('via:highlight', [newHighlight, highlighter]);
		} else {
//			console.log('daneben');
			element.trigger('via:highlight', [newHighlight, highlighter]);
		}

		// Remove native selection
		rangy.getSelection().removeAllRanges();
		
	});

	element.trigger('via:restoreHighlights', highlighter);
  
}
