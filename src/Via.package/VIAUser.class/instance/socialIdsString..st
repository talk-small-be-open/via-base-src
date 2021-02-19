as yet unclassified
socialIdsString: aString
	socialIds removeAll.
	(aString findTokens: ', ') do: [ :each | socialIds add: each ]