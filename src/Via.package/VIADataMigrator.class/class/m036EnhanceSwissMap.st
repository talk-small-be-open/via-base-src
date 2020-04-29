as yet unclassified
m036EnhanceSwissMap

	self db websiteDatasDo: [:each |
		each propertyAt: 'showSwissMapOnMyHome' put: false.
		each propertyAt: 'showSwissMapOnSearch' put: false.
	].