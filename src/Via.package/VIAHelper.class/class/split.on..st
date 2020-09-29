as yet unclassified
split: aCollection on: aBlock
	| result group |
	"Like splitOn: with a block, but platform independent simple implementation"

	result := OrderedCollection new.

	group := OrderedCollection new.

	aCollection do: [ :each |
		(aBlock value: each) = true ifTrue: [
			"Is a splitter"
			result add: group.
			group := OrderedCollection new
		] ifFalse: [
		"Is a normal item"
			group add: each
		]
	].

	result add: group.

	^ result