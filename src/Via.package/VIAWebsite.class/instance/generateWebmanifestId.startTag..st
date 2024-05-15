as yet unclassified
generateWebmanifestId: anIdString startTag: aStartTag
	| dict startUrl |
	
	startUrl := WAUrl new.
	startUrl addToPath: 'app'.
	startUrl addField: 'standalone'.
	
	aStartTag ifNotBlank: [ startUrl addField: 'tag' value: aStartTag ].
	
	dict := {
'name'->(self title).
'short_name'->(self title).
'id'->('/app?', anIdString).
'lang'->(self languageCode asString).
'dir'->'ltr'.

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
			'purpose'->'any maskable'.
		} asDictionary ]).
'start_url'->(startUrl asString).
'scope'->'/'. "the whole domain, including keepalive and other utility pathes"
'display'->'standalone'.
'orientation'->'portrait'.
'background_color'->(self themeColorBackground).
'theme_color'->(self themeColorForeground).
} asDictionary.

	^ dict