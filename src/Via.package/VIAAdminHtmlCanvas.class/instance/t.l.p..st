via
t: aKey l: aLanguage p: aDictionary
	| pillar params |
	
	"failsafe"
	"OPTIMIZE: Das ist overhead!"
	VIADatabase current isDevelopment ifTrue: [
		aKey isTranslationKey ifFalse: [
			self halt: 'Should not get here!'
"			self text: aKey"]
	].
	
	params := aDictionary asDictionary.

	pillar := VIADatabase current getUiText: aKey language: aLanguage.

	self pillar: pillar onMarker: [:marker :html |
		| paramValue |
		paramValue := params at: marker text asSymbol ifAbsent: [nil].
		paramValue ifNotBlank: [html text: paramValue asString]
	]