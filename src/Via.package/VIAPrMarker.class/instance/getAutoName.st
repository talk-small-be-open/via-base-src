as yet unclassified
getAutoName
	"Es soll mit einem Sonderzeichen beginnen!"
	| chars |
	chars := ($a to: $z), ($1 to: $9).
	^String streamContents: [:s |
		s nextPut: self markerIdentificationChar.
		4 timesRepeat: [s nextPut: chars atRandom]]