uitext
hasNonBlankUiText: aKey language: aLanguage

	| dictKey |
	dictKey := self uiTextKeyFor: aKey language: aLanguage.

	^ uiTexts at: dictKey ifPresent: [ :each | each notBlank ] ifAbsent: [ false ]