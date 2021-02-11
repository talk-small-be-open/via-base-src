as yet unclassified
generateFavicons
	| path |

	path := (self db propertyAt: #webRootPath), '/site/favicons/'.
	VIAHelper faviconImagesData
		do: [ :each |
			| x y n cmd file |
			n := each third.
			x := each first * n.
			y := each second * n.
			file := 'favicon-', x asString, 'x', y asString, '.png'.
			
			cmd := 'cd "', path, '" && convert -resize "', x asString,'x', y asString, '>" favicon.png "', file, '"'.

			MCLPlatform runShellCommand: cmd.
	]