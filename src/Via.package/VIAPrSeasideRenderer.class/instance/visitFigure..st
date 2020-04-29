as yet unclassified
visitFigure: aFigure
	html figure with: [
		| img |
		img := html image
			url: aFigure reference;
			yourself.
		aFigure parameters at: 'width' ifPresent: [ :width | img width: width greaseString].
		(html tag: 'figcaption') with: [
			super visitFigure: aFigure ]]