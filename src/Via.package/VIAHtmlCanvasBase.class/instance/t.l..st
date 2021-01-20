via
t: aKey l: aLanguage

"	aKey ifBlank: [ ^ self ].	"
		
	self pillar: (VIADatabase current getUiText: aKey language: aLanguage)