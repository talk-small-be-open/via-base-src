as yet unclassified
performSearch
	| filteredAssets |

	filteredAssets := self wd assets.
	
	searchType ~= #all ifTrue: [
		filteredAssets := filteredAssets select: [ :each | each isKindOf: searchType ] ].
	
	searchString ifNotBlank: [
		filteredAssets := filteredAssets select: [:each | each matchesSearchString: searchString]].
		
	filteredAssets := filteredAssets sortedReversedBy: [ :each | each createdAt ].
	
	self showAssets: filteredAssets