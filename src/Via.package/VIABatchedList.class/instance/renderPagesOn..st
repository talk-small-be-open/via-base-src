rendering
renderPagesOn: html
	self pageRange
		do: [ :index |
			html span class: 'page'; with: [ 
				self currentPage = index
					ifFalse: [
						html anchor
							callback: [ self currentPage: index ];
							with: index ]
					ifTrue: [ html strong: index ] ] ]