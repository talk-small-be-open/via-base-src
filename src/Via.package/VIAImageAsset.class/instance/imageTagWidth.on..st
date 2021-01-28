as yet unclassified
imageTagWidth: anInteger on: html
	
	"Convenience robustness"
	^ anInteger
		ifBlank: [ html image url: self imageUrl; yourself ]
		ifNotBlank: [
			| normalUrl hidpiUrl widthNumber|
			widthNumber := anInteger asInteger.
			normalUrl := (self imageUrlWidth: widthNumber).
			hidpiUrl := (self imageUrlWidth: (widthNumber * 2)).

			html image
				width: widthNumber;
				sourceSet: (normalUrl, ' 1x, ', hidpiUrl,' 2x');
				url: normalUrl;
				yourself]