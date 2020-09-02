// Outofthebox JS for VIAHighlightAreasV2Renderer

function highlightAreas_onDragEnter(event, id) {
	var all = $("#" + id).data("allSelChars");
	var a = all.index(event.relatedTarget); 
	var b = all.index(event.target);
	if (a>b) {[a, b] = [b, a]}
	all.removeClass("selected").slice(a, b+1).addClass("selected");

}



function highlightAreas_onDrop(event, id) {

	var taskElement = $("#"+id);

	var all = taskElement.data("allSelChars");
	var a = all.index(event.relatedTarget); 
	var b = all.index(event.target); 
	if (a>b) {[a, b] = [b, a]}
	var highlighted = all.slice(a, b+1);
	all.removeClass("selected");
	var toggle = ! ($(event.relatedTarget).hasClass("highlighted") && $(event.target).hasClass("highlighted"));
	highlighted.toggleClass("highlighted", toggle );

	// var map = all.map(function(i,e){return $(e).hasClass("highlighted") ? e.textContent : notHighlightedSymbol}).get().join("");
	// taskElement.find("input.charsMap").val(map);
	highlightAreas_scan(taskElement);

	// Hit detection. Selection has to be within an area, then we fire some ajax
	var leftArea = $(event.relatedTarget).closest("span.highlightArea");
	var rightArea = $(event.target).closest("span.highlightArea");

	if (leftArea[0] && (leftArea[0] == rightArea[0])) {
		var text = highlighted.text();
		leftArea.trigger("via:highlight", [text]);
	}
}

// Click on an already highlighted area. Remove highlight.
function highlightAreas_onClick(event, id) {
	if (!$(event.target).hasClass("highlighted")) {return false}

	var taskElement = $("#"+id);
	var all = taskElement.data("allSelChars");
	var me = event.target;
	var groups = runningGroupArray(all, function(each){ return $(each).hasClass("highlighted") });
	var myGroup = groups.find(function(each){return _.includes(each, me)})
	$(myGroup).removeClass("highlighted");

	highlightAreas_scan(taskElement);

}

function highlightAreas_onEnd(event, id) {
	var all = $("#"+id).data("allSelChars");
	all.removeClass("selected");
}

// Write the highlighted structure into a form element
function highlightAreas_scan(taskElement) {

//	var taskElement = $("#"+id);

	var all = taskElement.data("allSelChars");
	var map = all.map(function(i,e){return $(e).hasClass("highlighted") ? e.textContent : '~'}).get().join("");
	taskElement.find("input.charsMap").val(map);

}
