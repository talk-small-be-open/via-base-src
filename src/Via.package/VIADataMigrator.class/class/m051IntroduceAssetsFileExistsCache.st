as yet unclassified
m051IntroduceAssetsFileExistsCache
	self db websiteDatasDo: [ :each |
		each assets do: [ :eachAsset |		
			eachAsset initializeDefaultValues
	] ]