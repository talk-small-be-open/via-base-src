uitext
uiTextAt: aKey language: aLanguage
	| key |
	key := self uiTextKeyFor: aKey language: aLanguage.
	^self uiTextAt: key
