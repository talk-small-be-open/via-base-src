rendering
renderContentOn: html
	self renderSelfOn: html.

	next ifNotNil: [
		html horizontalRule.

		html anchor
			class: 'pull-right';
			callback: [ self killNext ];
			with: [ html iconClose ].
			
		html render: next]