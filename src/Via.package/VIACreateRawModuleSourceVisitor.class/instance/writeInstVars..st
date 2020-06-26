as yet unclassified
writeInstVars: anObject
	| classes |
	
	"Add a standard wrapping container div with the name of the component class"
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

			self write: each, ': '.

			(instVar isKindOf: VIAObject)
				ifTrue: [ instVar acceptVisitor: self ]
				ifFalse: [
					(instVar isKindOf: OrderedCollection)
						ifTrue: [
							self indent; newline.
							instVar do: [ :eachItem |
								self write: '- '.
								eachItem acceptVisitor: self ].
							self outdent.
						]
						ifFalse: [ instVar printOn: stream ] ].
				
			self newline.
		].
	].