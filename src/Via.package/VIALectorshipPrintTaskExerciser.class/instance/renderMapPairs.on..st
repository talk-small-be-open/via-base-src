rendering-visitor
renderMapPairs: aMapPairs on: html
	html table class: 'mapPairs'; with: [
		aMapPairs pairInputs do: [:each |
			html tableRow class: 'objectPair'; with: [
				each acceptRenderingVisitor: self on: html]]]