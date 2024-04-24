as yet unclassified
sortKey
	^ String streamContents: [ :s |
		s << self fullNameFormal asLowercase.
		self email ifNotBlank: [ :e | s << e asLowercase ] ]