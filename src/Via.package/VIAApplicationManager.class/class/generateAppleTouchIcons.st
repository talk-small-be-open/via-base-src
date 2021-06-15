as yet unclassified
generateAppleTouchIcons
	| path bg |

	path := (self db propertyAt: #webRootPath), '/site/pwa/apple/'.
	bg := self themeColorBackground.
	VIAHelper appleTouchIconImagesData
		do: [ :each |
			| x y n cmd file |
			n := each third.
			x := each first * n.
			y := each second * n.
			file := 'touch-icon-', x asString, 'x', y asString, '.png'.
			
			cmd := 'cd "', path, '" && convert -resize "', x asString,'x', y asString, '>" touch-icon.png', ' -gravity center -background "', bg, '" -extent ', x asString,'x', y asString, ' "', file, '"'.

			MCLPlatform runShellCommand: cmd.
	]