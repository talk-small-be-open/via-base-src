as yet unclassified
m043AddTermsAcception

	self db websiteDatasDo: [:each |
		each users do: [:eachUser | eachUser termsAccepted: true ]
	]