as yet unclassified
collectMatchingModules: aCollection query: aSearchQuery

	"Factored out loop, to allow for a return within the loop"
	| results |
	results := OrderedCollection new.

	"OPTIMIZE: Prepare some calculated data, for more efficient search loop"
	"tempData at: ..."

	aCollection do: [:each | 
		(self module: each matchesQuery: aSearchQuery)
			ifTrue: [	results add: each]].

 	^results