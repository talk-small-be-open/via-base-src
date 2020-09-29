as yet unclassified
tryGotoModuleByIndexCode: aString
	| session |
	[
		session := WACurrentRequestContext value session.
		session app gotoModuleByIndexString: aString.
	] ifError: []