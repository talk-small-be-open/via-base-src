rendering
renderSelfOn: html
	self renderTitleOn: html.
	self renderModelToolbarOn: html.
	html strong: 'Teacher:'.
	html unorderedList: [
		model teachers do: [ :each |
			html listItem: [
				self renderObject: each on: html.
				html space.
				html anchor
					callback: [ self removeTeacher: each ];
					with: [ html iconRemove ]
			] ]
	].
	html anchorButton
		callback: [ self addTeacher ];
		with: 'Add teacher'