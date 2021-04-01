as yet unclassified
modules: aCollection renderer: aModuleRenderer
	| searchResult |

	searchResult := VIASearchResult new
		results: aCollection;
		yourself.

	^ self searchResult: searchResult renderer: aModuleRenderer