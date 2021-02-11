as yet unclassified
generateMsImages
	| path |

	path := (self db propertyAt: #webRootPath), '/site/pwa/ms/'.
	VIAHelper msTileImagesData
		do: [ :each |
			| x y n cmd file |
			n := each third.
			x := each first * n.
			y := each second * n.
			file := 'tile-image-', x asString, 'x', y asString, '.png'.
			
			cmd := 'cd "', path, '" && convert -bordercolor white -border 10x10 -resize "', x asString,'x', y asString, '>" tile-image.png', ' -gravity center -background white -extent ', x asString,'x', y asString, ' "', file, '"'.

			MCLPlatform runShellCommand: cmd.
	]