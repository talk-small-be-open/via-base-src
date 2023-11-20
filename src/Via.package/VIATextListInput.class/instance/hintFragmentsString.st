as yet unclassified
hintFragmentsString
	^ MCLPlatform
		joinCollection: (hintFragments collect: [ :each | VIAHelper pillarStringFromPillar: each ])
		delimiter: String lf