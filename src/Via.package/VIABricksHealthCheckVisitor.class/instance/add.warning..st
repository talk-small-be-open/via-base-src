as yet unclassified
add: aBrick warning: aString
	| location |
	
	location := 'In Task "', currentTopLevelTask displayName, '": '.
	
	warnings add: { aBrick. (location, aString) }