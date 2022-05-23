rendering
renderSortOn: html
	html div class: 'pull-right'; with: [
		html strong: 'Sort: '.
		html anchorButton
			callback: [ self sortBySize ];
			with: 'by size'.
		html space.
		html anchorButton
			callback: [ self sortByDefault ];
			with: 'by type/name'.
		html space.
		html anchorButton
			callback: [ self sortByCreationDate ];
			with: 'by date' ]