rendering
renderModelToolbarOn: html
	html div class: 'modelToolbar'; with: [
		html anchor
			callback: [ self editModel: model ];
			with: 'EDIT' ]