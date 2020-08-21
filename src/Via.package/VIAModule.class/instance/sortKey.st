as yet unclassified
sortKey
	^ String streamContents: [ :s |
		self hasIndexCode ifTrue: [
			s << self indexCode sortKey ].
		s << self title asLowercase
	]