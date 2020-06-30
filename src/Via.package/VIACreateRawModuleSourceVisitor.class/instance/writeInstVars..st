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
			| instVar if handled |
			instVar := anObject instVarNamed: each.

			handled := false.
			if := [ :ifClasses :block |
				handled ifFalse: [
					(ifClasses anySatisfy: [ :eachIfClass | instVar isKindOf: eachIfClass ]) ifTrue: [
						handled := true.
						block ifNotNil: [
							self write: each, ': '.
							block value.
							self newline.
						]
					]
				]
			].

			if value: { String. Array. Symbol } value: [ instVar printOn: stream ].
			if value: { PRDocument } value: nil.

			if value: { VIAObject } value: [ instVar acceptVisitor: self ].
			if value: { OrderedCollection } value: [
				self indent; newline.
				instVar do: [ :eachItem |
					self write: '- '.
					eachItem acceptVisitor: self ].
				self outdent.
			].

			if value: { Dictionary. GRSmallDictionary } value: [
				self indent; newline.
				instVar keysAndValuesDo: [ :eachKey :eachItem |
					self write: ('- ', eachKey, ': ').
					eachItem acceptVisitor: self ].
				self outdent.
			].

			if value: { Object } value: [ instVar printOn: stream ].
				
		].
	].