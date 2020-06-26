as yet unclassified
generateRawSourceFile
	| tempFile visitor |
	tempFile := VIATempFile txtForXSendfile.

	visitor := VIACreateRawModuleSourceVisitor new.
"	visitor file: tempFile."

	self acceptVisitor: visitor.

	tempFile write: visitor contents.
	
	^tempFile