as yet unclassified
updateRootMicrosoft: anHtmlRoot

	"Microsoft"
	VIAHelper msTileImagesData do: [ :each |
		 | x y |
		x := each first.
		y := each second.

		anHtmlRoot meta
			name: 'msapplication-TileImage';
			content: '/site/pwa/ms/tile-image-', x asString, 'x', y asString,'.png' ].

	anHtmlRoot meta
		name: 'msapplication-TileColor';
		content: '#ffffff'.
