as yet unclassified
createNewTags: aString type: aClass
	(aString substrings: ',') do: [:each | aClass findOrCreateByText: each trimBoth website: self website]