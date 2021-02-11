as yet unclassified
exercisesByIndexCode
	| grouped dict |
	"Grouped by index code first item, and sorted by index code"

	dict := GRSmallDictionary2 new.
	
	grouped := self moduleExercises groupedBy: [ :each | each module indexCode firstAsIndexCode ].
	grouped keys sorted do: [ :each |
		dict at: each put: ((grouped at: each) sortedBySortKey)
	].
	
	^ dict