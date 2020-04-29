as yet unclassified
js
	| id functionName |
	id := self scrollingItemId.
	functionName := 'saveScroll_', id.
	
^'
function ', functionName,'() {
	saveScroll("', id,'")
}
	
$(document).ready(function(){
	if (!$.restoreScrollPositionIsSet) {
		$.restoreScrollPositionIsSet = true;
		window.addEventListener("unload", ', functionName, ');
		loadScroll("', id,'");
		setInterval(', functionName, ', 1000);
	}
});
'