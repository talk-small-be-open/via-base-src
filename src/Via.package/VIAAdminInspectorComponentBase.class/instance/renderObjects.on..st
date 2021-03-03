rendering
renderObjects: aCollection on: html
	aCollection ifBlank: [ ^ self ].
	
	html unorderedList
		with: [ 
			aCollection do: [ :each |
				html listItem: [
					self renderObject: each on: html ] ] ]