as yet unclassified
performSearch
	| filteredAssets |

	filteredAssets := self wd assets reversed.
	
	searchType ~= #all ifTrue: [
		filteredAssets := filteredAssets select: [ :each | each isKindOf: searchType ] ].
	
	searchString ifNotBlank: [
		filteredAssets := filteredAssets select: [:each | each matchesSearchString: searchString]].
		
	self showAssets: filteredAssets