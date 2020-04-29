accessing
clozeTemplateString: anObject
	| isChanged |
	isChanged := clozeTemplateString ~= anObject.
	clozeTemplateString := anObject.
	isChanged ifTrue: [self parseClozeTemplate]