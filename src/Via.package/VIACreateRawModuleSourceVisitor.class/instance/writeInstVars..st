as yet unclassified
writeInstVars: anObject
	| classes |
	
	"Write inst vars upto superclass VIAObject"
	classes := OrderedCollection new
		add: anObject class;
		addAll: ((VIAPlatform current superClassesOf: anObject class) copyUpTo: VIAObject);
		yourself.

	classes do: [ :eachClass |
		| varsToPrint |
		varsToPrint := eachClass instVarNames select: [ :each |
			(anObject instVarNamed: each) notBlank ].
		
		varsToPrint do: [ :each |
			| instVar |
			instVar := anObject instVarNamed: each.

			self writeObject: instVar named: each
		].
	]