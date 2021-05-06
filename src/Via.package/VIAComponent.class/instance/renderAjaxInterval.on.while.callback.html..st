rendering
renderAjaxInterval: aMsInteger on: html while: aWhileBlock callback: aCallbackBlock html: aBlock
	| id renderBlock |
	
	"Wraps a piece of render code inside an HTML/Javascript, which periodically triggers an action and reloads through AJAX"
	
	id := html nextId.

	renderBlock := [
		aBlock value: html.

		(aWhileBlock value = true) ifTrue: [
			html script: ((
				(aCallbackBlock ifNil: [JSStream new] ifNotNil: [ html jQuery ajax callback: aCallbackBlock ]),
				((html jQuery id: id) load html: renderBlock)
			) setTimeout: aMsInteger).
		]
	].
	
	html div
		style: 'display: contents';
		id: id;
		with: renderBlock