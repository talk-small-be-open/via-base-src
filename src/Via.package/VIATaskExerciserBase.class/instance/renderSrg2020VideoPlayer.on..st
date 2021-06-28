rendering-visitor
renderSrg2020VideoPlayer: aPlayer on: html
	| vimeoElementId |
	
	vimeoElementId := html nextId.

	html scriptDefer: (self jsForSrg2020VideoPlayer: aPlayer id: vimeoElementId).
	
	html div
		class: 'srgVideoPlayer';
		style: 'max-width: ', aPlayer width asString, 'px';
		with: [
			html div class: 'aspectRatioBox'; with: [
				html div id: vimeoElementId ].
	]