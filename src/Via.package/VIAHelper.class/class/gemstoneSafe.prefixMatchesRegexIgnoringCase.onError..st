as yet unclassified
gemstoneSafe: aString prefixMatchesRegexIgnoringCase: aRxString onError: aBlock
	"Avoiding AlmostOutOfStack from endless loop. Happened with some strings in GemStone. Strange bug? Probably simple cause, just stack to deep on
	complex input/regexps. Could increase GEM_MAX_SMALLTALK_STACK_DEPTH to more than default 1000"
	^ [
		| sanitized |
		sanitized := (self sanitizeToLatin1: aString placeholderChar: $x).

		sanitized prefixMatchesRegexIgnoringCase: aRxString
	] on: Admonition do: [:error | aBlock value ]