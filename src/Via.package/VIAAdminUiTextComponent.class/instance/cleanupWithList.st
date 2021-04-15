rendering
cleanupWithList
	| list givenUiKeys fromScript |
	
	fromScript := self isDevelopment
		ifTrue: [ MCLPlatform runShellCommand: '../base/development/scan_source_uitexts.sh' ]
		ifFalse: [ MCLPlatform runShellCommand: '/opt/via/via_base/server/scan_source_uitexts.sh' ]. 
	
	list := self requestMultiline: 'This ist the list of 90% of the used UI-texts. Paste your own, or continue. In the next step you will see the list of potentially unused UI texts' default: fromScript.
	
	list ifBlank: [ ^ self ].
	
	givenUiKeys := list lines.

	"Show only non mentioned ui texts"
	
	uiTextKeys := self db uiTexts keys sorted.
	
	uiTextKeys := uiTextKeys reject: [ :each |
"		| partKey |
		partKey := each, '/'."
		givenUiKeys anySatisfy: [ :eachGiven | each beginsWith: (eachGiven, '/') ] ].
	
	self flashMessage: 'You see the list of potentially unused UI texts. Only delete with care!'