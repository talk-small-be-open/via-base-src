as yet unclassified
generateManifestJson
	| j website path |
	
	"OPTIMIZE: For each website an individual manifest?"
	website := self db websites first.
	path := (self db propertyAt: #webRootPath), '/site/'.

	j := {
'name'->(website title).
'short_name'->(website title).
'lang'->(website languageCode).
'dir'->'ltr'.
"'description'->'App für den Unterricht in Deutsch als Zweitsprache'."

"We are lazy and just take the icons from apple"
'icons'->(VIAHelper appleTouchIconImagesData collect: [ :each |
		| x y dim |
		x := each first asString.
		y := each second asString.
		dim := (x, 'x', y).
		{
			'src'->('/site/pwa/apple/touch-icon-', dim, '.png').
			'type'->'image/png'.
			'sizes'->dim.
		} asDictionary ]).
'start_url'->(website url).
'display'->'standalone'.
'orientation'->'portrait'.
'background_color'->'#ffffff'.
'theme_color'->'#ffffff'.
} asDictionary.

	GRPlatform current write: j asJson toFile: 'manifest.webmanifest' inFolder: path