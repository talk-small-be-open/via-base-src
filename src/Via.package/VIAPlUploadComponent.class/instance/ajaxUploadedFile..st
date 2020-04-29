as yet unclassified
ajaxUploadedFile: aString
	| split filename filetitle |
	split := aString findTokens: '/'.
	filename := split first.
	filetitle := split second.

	self processUploadedFile: filename named: filetitle.

	"self registerUploadedFile: split first named: split second"