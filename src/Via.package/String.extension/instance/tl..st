*Via
tl: aLanguage
	
	"OPTIMIZE: Ist das erlaubt? Am Rande des guten Geschmacks? Aber saupraktisch"
	[
		| session |
		session := WACurrentRequestContext value session.
		^ (session getUiText: self language: aLanguage) text.
	] ifError: [
		^ 'ui-text-error'
	]