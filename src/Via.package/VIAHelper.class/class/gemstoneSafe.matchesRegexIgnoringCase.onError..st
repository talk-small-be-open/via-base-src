as yet unclassified
gemstoneSafe: aString matchesRegexIgnoringCase: aRxString onError: aBlock
	"Avoiding AlmostOutOfStack from endless loop. Happened with some strings in GemStone. Strange bug."
	^ [
		| sanitized |
		sanitized := (self sanitizeToLatin1: aString placeholderChar: $x).

		sanitized matchesRegexIgnoringCase: aRxString
	] on: Admonition do: [:error | aBlock value ]