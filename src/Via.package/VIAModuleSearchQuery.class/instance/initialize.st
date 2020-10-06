initialization
initialize

	super initialize.

	"Non-public properties. Will stay untouched on clearing."
	includeDrafts := false.
	includeExams := false.
	includePrivates := false.
	isIndexExactMatch := false.