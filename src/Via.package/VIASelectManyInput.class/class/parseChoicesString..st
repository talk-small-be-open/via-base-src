parsing
parseChoicesString: aString
	| lines solutions choices choicesGroups evaluator |
	lines := aString lines collect: [ :each | each trimBoth ].
	lines := lines copyWithoutBlanks.
	
	lines ifEmpty: [ ^ #(#() #() #()) ].

	evaluator := [ :inString |
		inString = VIAHelper blankTextPlaceholder
			ifTrue: [ VIABlankAnswerItem default ]
			ifFalse: [ inString ]
	].

	"Read out the solutions"
	solutions := lines select: [:each | each beginsWith: '*'] thenCollect: [:each | evaluator value: each allButFirst].

	"Remove the *-prefixes"
	lines := lines collect: [:each | evaluator value: (each trimLeft: [:char | char = $* ]) ].

	"Group choices at border of --"
	choicesGroups := MCLPlatform splitCollection: lines delimiter: '--'.

	"Get all choices"
	choices := choicesGroups flatCollect: [:each | each ].
	
	^ {solutions. choices. choicesGroups}