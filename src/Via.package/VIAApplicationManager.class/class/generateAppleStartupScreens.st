as yet unclassified
generateAppleStartupScreens
	| path bg |

	path := (self db propertyAt: #webRootPath), '/site/pwa/apple/'.
	bg := self themeColorBackground.
	
	VIAHelper appleStartupImagesDataDo: [ :x :y :n :orient |
			| width height cmd file |
			width := x * n.
			height := y * n.
			file := 'startup-', width asString, 'x', height asString, '-', orient, '.png'.
			
			cmd := 'cd "', path, '" && convert -resize "', width asString,'x', height asString, '>" startup.png', ' -gravity center -background "', bg, '" -extent ', width asString,'x', height asString, ' "', file, '"'.

			MCLPlatform runShellCommand: cmd.
	]