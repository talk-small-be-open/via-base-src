as yet unclassified
displayName
	^ String streamContents: [ :s |
		indexCode ifNotBlank: [:i | s << i asString. s space].
		s << self title.
		self isDraft ifTrue: [ s << ' (DRAFT)' ]
	]