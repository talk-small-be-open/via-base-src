as yet unclassified
loadDefaultSampleData: aWebsite
	self loadUser: aWebsite.
	self loadTestModule: aWebsite.
	self loadLotsOfDummyModules: aWebsite.
	self loadDesignerTemplateModule: aWebsite.
