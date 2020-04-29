as yet unclassified
createSearchResultFor: aCollection
	| result |

	result := VIASearchResult new
		results: aCollection;
"		sortType: self sortType;
		sortOrder: self sortOrder;"
"		sort;"
		yourself.

"	self isLimitingMaxResults ifTrue: [
		result truncateTo: self maxResults]."
		
	^result