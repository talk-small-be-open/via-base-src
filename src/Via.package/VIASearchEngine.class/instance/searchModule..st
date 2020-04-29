as yet unclassified
searchModule: aModuleSearchQuery
	"Search for peoples matching the query"
	| results modules |

	modules := aModuleSearchQuery allObjectsCollection.
	
	results := self collectMatchingModules: modules query: aModuleSearchQuery.

"	results := self transformOutput: results query: aPeopleSearchQuery."
	
	^aModuleSearchQuery createSearchResultFor: results