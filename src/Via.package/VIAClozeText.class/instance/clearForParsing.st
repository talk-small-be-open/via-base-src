as yet unclassified
clearForParsing
	| now |
	now := DateAndTime now.
	
	"Keep the objects for later re-assign"

	"Clear shelf, if long ago"
	(placeholderShelf isNil or: [ lastParsedAt notNil and: [ (now - lastParsedAt) > 7 days ] ]) ifTrue: [
		placeholderShelf := GRSmallDictionary new ].

	placeholderShelf addAll: placeholders.

	lastParsedAt := now.
	placeholders := GRSmallDictionary new. "Order preserve!"