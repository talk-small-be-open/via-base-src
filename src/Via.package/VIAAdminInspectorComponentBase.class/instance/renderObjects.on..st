rendering
renderObjects: aCollection on: html
	html unorderedList
		with: [ 
			aCollection do: [ :each |
				html listItem: [
					self renderObject: each on: html ] ] ]