parsing
parseText: aString
	"Parses ==aString== and answer a collection of *PRText*, *PRFormat* and *PRLink* instances. Take care not to take into account any markup item that is escaped. This implementation is a bit slow, but who cares, it happens only once."

	| markup class start stop result |
	markup := PRMatcherManager findFirstOf: PRMatcherManager default textMatcher at: 1 in: aString.
	markup isNil ifFalse: [
		class := PRMatcherManager textMatcher at: markup.
		start := PRMatcherManager findFirst: markup at: 1 in: aString.
		stop := PRMatcherManager findFirst: (class markupEnd: markup) at: start + markup size in: aString.
		start < stop ifTrue: [
			result := WriteStream on: Array new.
			result nextPutAll: (PRTextParser parseString: (aString first: start - 1)).
			result nextPut: (class
				parse: (aString copyFrom: start to: stop + markup size - 1)
				with: self).
			result nextPutAll: (self parseText: (aString allButFirst: stop + markup size - 1)).
			^ result contents ] ].
	^ PRTextParser parseString: aString