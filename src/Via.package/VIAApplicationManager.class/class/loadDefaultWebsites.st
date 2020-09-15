as yet unclassified
loadDefaultWebsites
	| db |

	db := self db.

	db initializeDefaultValues.
	
	(db instVarNamed: 'websites') removeAll.
	(db instVarNamed: 'websiteDatas') removeAll.

	VIAWebsite subclassesDo: [ :each |
		| website websiteData |
		website := each new.
		website
			domain: (website languageCode asString, '.via'); "de.via"
			title: ('VIA ', website language asString);
			code: ('via_', website languageCode asString); "via-de"
			yourself.
		
		db addWebsite: website.

		websiteData := db websiteDataAt: website.

	
		websiteData exerciseLevels: #('A1' 'A2' 'B1' 'B2').
	
"		websiteData categories: (db instVarNamed: 'categories') copy."
		websiteData tags: (db instVarNamed: 'tags') copy.
		websiteData users: (db instVarNamed: 'users') copy.

	]