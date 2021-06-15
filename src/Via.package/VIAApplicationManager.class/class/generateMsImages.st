as yet unclassified
generateMsImages
	| path bg |

	path := (self db propertyAt: #webRootPath), '/site/pwa/ms/'.
	bg := self themeColorBackground.
	
	VIAHelper msTileImagesData
		do: [ :each |
			| x y n cmd file |
			n := each third.
			x := each first * n.
			y := each second * n.
			file := 'tile-image-', x asString, 'x', y asString, '.png'.
			
			cmd := 'cd "', path, '" && convert -resize "', x asString,'x', y asString, '>" tile-image.png', ' -gravity center -background "', bg, '" -extent ', x asString,'x', y asString, ' "', file, '"'.

			MCLPlatform runShellCommand: cmd.
	]