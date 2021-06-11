rendering-visitor
renderVimeoVideoPlayer: aPlayer on: html
	| vimeoElementId |
	
	vimeoElementId := html nextId.

	html scriptDefer: (self jsForVimeoVideoPlayer: aPlayer id: vimeoElementId).
	
	html div
		class: 'vimeoPlayer';
		style: 'max-width: ', aPlayer width asString, 'px';
		with: [
			html div id: vimeoElementId.
	]