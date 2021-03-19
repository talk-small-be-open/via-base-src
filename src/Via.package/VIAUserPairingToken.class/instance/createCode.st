as yet unclassified
createCode
	| newCode base noVocals |
	
	"Numbers were confusing with letters	base := ($a to: $z), ($1 to: $9)."
	"q will be confused with g"

	base := ($a to: $z) copyWithoutAll: #($q).
	noVocals := base copyWithoutAll: #($a $e $i $o $u).
"	newCode := (1 to: 3) inject: '' into: [ :result :each | result, base atRandom asString ]."

	"Avoid silly words, use no vocal on place 1 and 2"
	newCode := noVocals atRandom asString, noVocals atRandom asString, base atRandom asString.

	self code: newCode