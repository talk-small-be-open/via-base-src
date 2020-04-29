as yet unclassified
on: aKey do: aValue
	| collection |
	collection := self events at: aKey ifAbsentPut: [OrderedCollection new ].
	collection add: aValue asFunction