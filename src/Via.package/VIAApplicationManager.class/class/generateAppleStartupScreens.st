as yet unclassified
generateAppleStartupScreens
	| path |

	path := (self db propertyAt: #fileStoragePath), '/site/pwa/apple/'.
	VIAHelper appleStartupImagesData
		do: [ :each |
			| x y n cmd file |
			n := each third.
			x := each first * n.
			y := each second * n.
			file := 'startup-', x asString, 'x', y asString, '.png'.
			
			cmd := 'cd "', path, '" && convert -bordercolor white -border 10x10 -resize "', x asString,'x', y asString, '>" startup-logo.png', ' -gravity center -background white -extent ', x asString,'x', y asString, ' "', file, '"'.

			MCLPlatform runShellCommand: cmd.
	]