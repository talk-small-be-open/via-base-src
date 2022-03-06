as yet unclassified
clearForParsing
	| now |
	now := DateAndTime now.
	
	"Keep the objects for later re-assign"

	"Clear shelf, if long ago"
	(areaShelf isNil or: [ lastParsedAt notNil and: [ (now - lastParsedAt) > 7 days ] ]) ifTrue: [
		areaShelf := GRSmallDictionary new ].

	areas ifNotNil: [
		"Rescue the elements to the shelf"
		areaShelf addAll: areas ].

	lastParsedAt := now.	
	areas := GRSmallDictionary new. "Order preserved!"