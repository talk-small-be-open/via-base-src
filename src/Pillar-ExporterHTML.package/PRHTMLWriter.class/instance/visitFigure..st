visiting-document
visitFigure: aFigure
	aFigure label
		ifNotNil: [ :label | 
			canvas tag
				name: 'a';
				parameterAt: 'name' put: label;
				with: '' ].
	canvas tag
		name: 'figure';
		with: [ 
					| img |
					img := canvas tag
						name: 'img';
						parameterAt: 'src' put: (self referenceOfExternalLink: aFigure);
						yourself.
					aFigure parameters at: 'width' ifPresent: [ :width | img parameterAt: 'width' put: width greaseString , '%' ].
					img with: ''.
					canvas tag
						name: 'figcaption';
						with: [ 
									aFigure label ifNotNil: [ self writeCounterForFigure: aFigure ].
									super visitFigure: aFigure ] ]