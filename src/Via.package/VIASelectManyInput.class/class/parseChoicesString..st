parsing
parseChoicesString: aString
	| lines solutions choices choicesGroups |
	lines := aString lines collect: [ :each | each trimBoth ].
	lines := lines copyWithoutBlanks.
	
	lines ifEmpty: [ ^ #(#() #() #()) ].

	"Read out the solutions"
	solutions := lines select: [:each | each beginsWith: '*'] thenCollect: [:each | each allButFirst].

	"Remove the *-prefixes"
	lines := lines collect: [:each | each trimLeft: [:char | char = $* ]].

	"Group choices at border of --"
	choicesGroups := MCLPlatform splitCollection: lines delimiter: '--'.

	"Get all choices"
	choices := choicesGroups flatCollect: [:each | each ].
	
	^ {solutions. choices. choicesGroups}