uitext
ensureUiText: aKey language: aLanguage
	| key |
	key := self uiTextKeyFor: aKey language: aLanguage.

	uiTexts at: key ifAbsent: [
		| defaultValue |
		defaultValue := self uiTextDefaultValue: key.

		self uiTextAt: key put: defaultValue]