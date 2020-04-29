as yet unclassified
m033FixMissingWebsiteInModules
	self db websites do: [:eachWebsite |
		| wd |
		wd := self db websiteDataAt: eachWebsite.
		
		wd modules do: [:eachModule |
			eachModule moduleHistory versions do: [:eachVersion |
				eachVersion website ifNil: [eachVersion website: eachWebsite]
			]
		]
	].