as yet unclassified
displayName
	^ String streamContents: [ :s |
		indexCode ifNotBlank: [:i | s << i. s space].
		s << self title.
		self isDraft ifTrue: [ s << ' (DRAFT)' ]
	]