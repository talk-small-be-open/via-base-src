via
t: aKey l: aLanguage

"	aKey ifBlank: [ ^ self ].	"
	self pillar: (self session getUiText: aKey language: aLanguage)		
"	self pillar: (VIADatabase current getUiText: aKey language: aLanguage)"