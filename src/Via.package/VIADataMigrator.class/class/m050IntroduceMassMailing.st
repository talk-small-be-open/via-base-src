as yet unclassified
m050IntroduceMassMailing
	self db websiteDatasDo: [ :each |
		each initializeDefaultValues.
		
		"Lazy set mailing globally to disabled"
		#(updatedModule newModule) do: [ :eachChannel |
			each mailingConfiguration channel: eachChannel enabled: false].
		
		each users do: [ :eachUser | eachUser initializeDefaultValues ]
	]