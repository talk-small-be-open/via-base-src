as yet unclassified
getUiText: aKey language: aLanguage
	"Fast and smart intercaching"
	| fullKey |
	fullKey := self db uiTextKeyFor: aKey language: aLanguage.
	^cachedUiTexts at: fullKey ifAbsentPut: [
		self db getUiText: aKey language: aLanguage]