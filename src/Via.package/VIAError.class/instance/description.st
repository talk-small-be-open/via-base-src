as yet unclassified
description
  "Wegen GemStone Kompatibilität"

	^String streamContents: [ :stream | | mt |
		stream << self class name.
		(mt := self messageText) isEmptyOrNil
			ifFalse: [ stream << ': ' << mt ] ]