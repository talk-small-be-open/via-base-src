via
t: aKey l: aLanguage
	"failsafe"
	"OPTIMIZE: Das ist overhead!"
	VIADatabase current isDevelopment ifTrue: [
		(aKey isTranslationKey not and: [(self session isKindOf: VIAAdminSession) not]) ifTrue: [
			self error: 'Should not get here!'
"			self text: aKey"]
	].
	
	self pillar: (VIADatabase current getUiText: aKey language: aLanguage)