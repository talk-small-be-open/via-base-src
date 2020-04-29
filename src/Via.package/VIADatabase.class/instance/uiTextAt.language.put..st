uitext
uiTextAt: aKey language: aLanguage put: aPillarString
	| key |
	
	key := self uiTextKeyFor: aKey language: aLanguage.
	
	^self uiTextAt: key put: aPillarString