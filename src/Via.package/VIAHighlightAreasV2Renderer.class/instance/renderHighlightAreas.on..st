as yet unclassified
renderHighlightAreas: aHighlightAreas on: html
	| id inputId |
	
	"Übergeordneter Handler bei Markierung. (Jeder Markierstelle hat noch einen eigenen)"
"	jsStoreHandler := ((html jQuery ajax
		callback: [:value | rangySerialization value: value]
		value: (JSStream on: 'highlighter.serialize()');
		onError: (html javascript alert: 'Fehler beim Speichern der Markierung!')))
			asFunction: #(event newHighlights highlighter)."

	self start.

	highlightedCharsMap := self exercise answer: #highlightedCharsMap of: aHighlightAreas.
"	highlightedCharsMap inspect."

	inputId := html nextId.

	html div
		class: 'highlightAreas';
		id: (id := html nextId);
		script: (html jQuery this dataAt: 'allSelChars' put: (html jQuery this find: 'span.selChar'));
		script: ((html jsInteract: 'span.selChar') dropzone
			onDragEnter: ('
var all = $("#', id, '").data("allSelChars");
var a = all.index(event.relatedTarget); 
var b = all.index(event.target);
if (a>b) {[a, b] = [b, a]}
all.removeClass("selected").slice(a, b+1).addClass("selected");
');
			onDrop: ('
var all = $("#', id, '").data("allSelChars");
var a = all.index(event.relatedTarget); 
var b = all.index(event.target); 
if (a>b) {[a, b] = [b, a]}
var highlighted = all.slice(a, b+1);
all.removeClass("selected");
var toggle = ! ($(event.relatedTarget).hasClass("highlighted") && $(event.target).hasClass("highlighted"));
highlighted.toggleClass("highlighted", toggle );
var map = all.map(function(i,e){return $(e).hasClass("highlighted") ? e.textContent : "', notHighlightedSymbol asString, '"}).get().join("");
$("#', inputId, '").val(map);

var leftArea = $(event.relatedTarget).closest("span.highlightArea");
var rightArea = $(event.target).closest("span.highlightArea");

if (leftArea[0] && (leftArea[0] == rightArea[0])) {
	var text = highlighted.text();
	leftArea.trigger("via:highlight", [text]);
}
')
		);

		script: ((html jsInteract: 'span.selChar') draggable
			onEnd: '
var all = $("#', id, '").data("allSelChars");
all.removeClass("selected");
'
		);

		onClick: (('
if (!$(event.target).hasClass("highlighted")) {return false}
var all = $("#', id, '").data("allSelChars");
var me = event.target;
var groups = runningGroupArray(all, function(each){ return $(each).hasClass("highlighted") });
var myGroup = groups.find(function(each){return _.includes(each, me)})
$(myGroup).removeClass("highlighted");
') asFunction: #(event));
		
		with: [
			pillarSeasideRenderer
				seasideHtmlCanvas: html;
				markerRenderingBlock: [:marker :h |
					| area |
					area := aHighlightAreas areaForMarker: marker.
					area acceptRenderingVisitor: self on: h];
				start: aHighlightAreas pillarDocument].
	
	html textInput
		id: inputId;
		style: 'display: none';
		on: #value of: highlightedCharsMap