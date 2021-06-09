as yet unclassified
tryGotoModuleByCommandString: aString
	| session |
	[
		session := WACurrentRequestContext value session.
		session app gotoModuleByCommandString: aString.
	] ifError: []