as yet unclassified
generateFavicons
	| path cmd |

	path := (self db propertyAt: #webRootPath), '/site/favicons/'.
	VIAHelper faviconImagesData
		do: [ :each |
			| x y n file |
			n := each third.
			x := each first * n.
			y := each second * n.
			file := 'favicon-', x asString, 'x', y asString, '.png'.
			
			cmd := 'cd "', path, '" && convert -resize "', x asString,'x', y asString, '>" favicon.png "', file, '"'.

			MCLPlatform runShellCommand: cmd.
	].

	"favicon.ico"
	cmd := 'cd "', path, '" && convert favicon-16x16.png favicon-32x32.png favicon.ico && cp favicon.ico ../favicon.ico'.
	MCLPlatform runShellCommand: cmd.

