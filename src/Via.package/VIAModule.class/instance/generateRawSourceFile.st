as yet unclassified
generateRawSourceFile
	| tempFile visitor |
	tempFile := VIATempFile txtForXSendfile.

	visitor := VIACreateRawModuleSourceVisitor new.
"	visitor file: tempFile."

	self tasks withIndexDo: [:eachTask :eachIndex |
		eachTask acceptVisitor: visitor.
	].

	tempFile write: visitor contents.
	
	^tempFile