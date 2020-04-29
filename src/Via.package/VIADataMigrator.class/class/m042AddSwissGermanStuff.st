as yet unclassified
m042AddSwissGermanStuff
	| germanWebsite |
	germanWebsite := self db websiteForLanguage: #german.

	(VIATopicTag findOrCreateByCode: #swissgerman website: germanWebsite)
		text: 'Schweizerdeutsch'.