as yet unclassified
fastFileExists: aPathString
	| value |
	"Once it exists, we cache it, else we keep testing"
	value := cachedFileExists at: aPathString ifAbsent: [false].
	value ifFalse: [
		"We test"
		value := (VIAPlatform current fileExists: aPathString).
		cachedFileExists at: aPathString put: value.
	].

	^value