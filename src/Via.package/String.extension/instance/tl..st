*Via
tl: aLanguage
	
"	^(VIADatabase current getUiText: self language: aLanguage) text"
	
	"OPTIMIZE: Ist das erlaubt? Am Rande des guten Geschmacks? Aber saupraktisch"
	[
		| session |
		session := WACurrentRequestContext value session.
"		l := session language."
		^ (session getUiText: self language: aLanguage) text.
	] ifError: [
		"l := #italian"
		^ 'ui-text-error'
	]
	
"	^self tl: l"