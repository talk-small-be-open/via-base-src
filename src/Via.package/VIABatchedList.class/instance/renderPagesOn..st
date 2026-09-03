rendering
renderPagesOn: html
	| range |
	range := self pageRange.
	
	range first > 1 ifTrue: [ html span class: 'page'; with: '...' ].
	
	range do: [ :index |
			html span class: 'page'; with: [ 
				self currentPage = index
					ifFalse: [
						html anchor
							callback: [ self currentPage: index ];
							with: index ]
					ifTrue: [ html strong: index ] ] ].
			
	range last < self maxPages ifTrue: [ html span class: 'page'; with: '...' ].
