enumerating
select: aKey
	| newText |
	uiKey := aKey.
	uiRawText := (VIAHelper pillarStringFromPillar: (self db uiTextAt: aKey language: self currentLanguage)).

"	newText := self call: (VIAInputDialog new
		beMultiline;
		default: uiRawText;
		messageText: uiKey;
		yourself)."
		
	newText := self requestMultiline: uiKey default: uiRawText.
	
	newText ifNil: [ ^ self ].
		
	self uiRawText: newText