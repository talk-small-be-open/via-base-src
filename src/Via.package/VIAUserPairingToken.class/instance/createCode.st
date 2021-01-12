as yet unclassified
createCode
	| newCode base |
	
	"Numbers were confusing with letters	base := ($a to: $z), ($1 to: $9)."
	base := ($a to: $z).
	newCode := (1 to: 3) inject: '' into: [ :result :each | result, base atRandom asString ].

	self code: newCode