as yet unclassified
m039IntroduceGermanWebsite
	| g gd id db  |

	db := self db.

	g := VIAGermanWebsite new
		domain: (db isDevelopment ifTrue: ['321los'] ifFalse: ['321clip.ch']);
		title: '3-2-1 los!';
		code: '321los';
		yourself.

	db addWebsite: g.

	gd := db websiteDataAt: g.
	id := (db websiteForLanguage: #italian) data.


	"Properties"
	gd propertyAt: #assetsRelativePath put: 'assets_d'.

	"TODO!!!"
	"Google API"
	gd propertyAt: #googleClientId put: '270212916172-t7ns2jhcujchj713imq7evlikbcfi3il.apps.googleusercontent.com'.

	"TODO!!!"
	"Facebook API"
	gd propertyAt: #facebookAppId put: '496989134382221'.

	"TODO?"
	"Google Analytics"
"	gd propertyAt: #googleAnalyticsId put: 'UA-75823317-2'."


	"Gewisse Tags schon mal kopieren"
	gd tags: ((id tags select: [:each | (each isKindOf: VIADurationTag) or: [each isKindOf: VIAActivityTypeTag]]) collect: #copy).

	gd exerciseLevels: #('A1' 'A2' 'B1' 'B2' 'C1' 'C2').