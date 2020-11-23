rendering
renderAjaxInterval: aMsInteger on: html html: aBlock
	| id |
	
	"Wraps a piece of render code inside an HTML/Javascript, which periodically reloads
	through AJAX"
	
	id := html nextId.
	
	html div
		style: 'display: contents';
		id: id;
		script: (((html jQuery id: id) load html: aBlock) interval: aMsInteger);
		with: [ aBlock value: html ]