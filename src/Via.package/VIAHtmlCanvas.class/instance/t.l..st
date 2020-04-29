321via
t: aKey l: aLanguage
	"failsafe"
	"OPTIMIZE: Das ist overhead!"
	VIADatabase current isDevelopment ifTrue: [
		aKey isTranslationKey ifFalse: [
			self halt: 'Should not get here!'
"			self text: aKey"]
	].
	
	self pillar: (VIADatabase current getUiText: aKey language: aLanguage)