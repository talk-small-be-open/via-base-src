as yet unclassified
m034AddSwissMap

	self db websiteDatasDo: [:each |
		each propertyAt: 'showSwissMapOnPublicHome' put: false.
	].