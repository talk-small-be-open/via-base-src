as yet unclassified
generateAppleStartupScreens
	| path bg |

	path := (self db propertyAt: #webRootPath), '/site/pwa/apple/'.
	bg := self themeColorBackground.
	
	VIAHelper appleStartupImagesData
		do: [ :each |
			| x y n cmd file |
			n := each third.
			x := each first * n.
			y := each second * n.
			file := 'startup-', x asString, 'x', y asString, '.png'.
			
			cmd := 'cd "', path, '" && convert -resize "', x asString,'x', y asString, '>" startup.png', ' -gravity center -background "', bg, '" -extent ', x asString,'x', y asString, ' "', file, '"'.

			MCLPlatform runShellCommand: cmd.
	]