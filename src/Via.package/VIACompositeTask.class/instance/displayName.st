as yet unclassified
displayName
	^ String streamContents: [:s |
		self title
			ifBlank: [s << self classDisplayName ]
			ifNotBlank: [ s << self title ].
		self subtitle ifNotBlank: [
			s << ' - '.
			s << self subtitle
		]
	]