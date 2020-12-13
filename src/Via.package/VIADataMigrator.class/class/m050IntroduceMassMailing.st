as yet unclassified
m050IntroduceMassMailing
"	self db initializeDefaultValues."
	self db websiteDatasDo: [ :each |
		each initializeDefaultValues.
		
		each users do: [ :eachUser | eachUser initializeDefaultValues ]
	].