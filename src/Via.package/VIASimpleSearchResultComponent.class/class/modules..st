as yet unclassified
modules: aCollection
	| searchResult |

	searchResult := VIASearchResult new
		results: aCollection;
		yourself.

	^ self searchResult: searchResult