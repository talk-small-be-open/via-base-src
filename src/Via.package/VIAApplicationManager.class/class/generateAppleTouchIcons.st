as yet unclassified
generateAppleTouchIcons
	| path |

	path := (self db propertyAt: #webRootPath), '/site/pwa/apple/'.
	VIAHelper appleTouchIconImagesData
		do: [ :each |
			| x y n cmd file |
			n := each third.
			x := each first * n.
			y := each second * n.
			file := 'touch-icon-', x asString, 'x', y asString, '.png'.
			
			cmd := 'cd "', path, '" && convert -bordercolor white -border 10x10 -resize "', x asString,'x', y asString, '>" touch-icon.png', ' -gravity center -background white -extent ', x asString,'x', y asString, ' "', file, '"'.

			MCLPlatform runShellCommand: cmd.
	]