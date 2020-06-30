as yet unclassified
writeObject: anObject named: aString
	| if handled |

	handled := false.
	if := [ :ifClasses :block |
		handled ifFalse: [
			(ifClasses anySatisfy: [ :eachIfClass | anObject isKindOf: eachIfClass ]) ifTrue: [
				handled := true.
				block ifNotNil: [
					aString ifNotBlank: [ self write: aString, ': ' ].
					block value.
					self newline.
				]
			]
		]
	].

	if value: { String. Symbol. ByteArray } value: [ anObject printOn: stream ].
	if value: { PRDocument } value: nil.

	if value: { VIAObject } value: [ anObject acceptVisitor: self ].
	if value: { SequenceableCollection } value: [
		self indent; newline.
		anObject do: [ :eachItem |
			self write: '- '.
			self writeObject: eachItem named: nil. ].
		self outdent.
	].

	if value: { Dictionary. GRSmallDictionary } value: [
		self indent; newline.
		anObject keysAndValuesDo: [ :eachKey :eachItem |
			self write: '- '.
			self writeObject: eachItem named: eachKey.
		].
		self outdent.
	].

	if value: { Object } value: [ anObject printOn: stream ].