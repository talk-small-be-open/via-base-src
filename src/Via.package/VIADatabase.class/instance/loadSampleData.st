data-seeding
loadSampleData
	self websites do: [ :each |
		VIASamplesGenerator new loadDefaultSampleData: each]