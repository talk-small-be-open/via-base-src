as yet unclassified
getUiText: aKey language: aLanguage
	"Fast and smart inter"
	^cachedUiTexts at: aKey ifAbsentPut: [
		self db getUiText: aKey language: aLanguage]