as yet unclassified
displayName
	^String streamContents: [:s |
		s << self fullNameFormal.
		self email ifNotBlank: [
			s << ' ('.
			s << self email.
			s << ')' ] ]