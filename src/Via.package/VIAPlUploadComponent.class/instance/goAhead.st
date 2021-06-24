actions
goAhead
	| copy |
"	self processUploadedFiles"
	copy := tempFileReferences copy.

	"Save emptying, because of back button side effects, and multiple processing
	of already processed uploaded file. SHITTY back button"
	self clear.

	self answer: copy.