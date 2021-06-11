rendering-visitor
renderSrgVideoPlayer: aPlayer on: html
	| vimeoElementId |
	
	vimeoElementId := html nextId.

	html scriptDefer: (self jsForSrgVideoPlayer: aPlayer id: vimeoElementId).
	
	html div
		class: 'srgVideoPlayer';
		style: 'max-width: ', aPlayer width asString, 'px';
		with: [
			html div class: 'aspectRatioBox'; with: [
				html div id: vimeoElementId ].
	]