as yet unclassified
generateAppleStartupScreens
	| path |

	path := (self db propertyAt: #webRootPath), '/site/pwa/apple/'.
	VIAHelper appleStartupImagesData
		do: [ :each |
			| x y n cmd file |
			n := each third.
			x := each first * n.
			y := each second * n.
			file := 'startup-', x asString, 'x', y asString, '.png'.
			
			cmd := 'cd "', path, '" && convert -resize "', x asString,'x', y asString, '>" startup.png', ' -gravity center -background transparent -extent ', x asString,'x', y asString, ' "', file, '"'.

			MCLPlatform runShellCommand: cmd.
	]