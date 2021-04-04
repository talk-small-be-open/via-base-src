*Via
t
	
	"OPTIMIZE: Ist das erlaubt? Am Rande des guten Geschmacks? Aber saupraktisch"
	[
		| session |
		session := WACurrentRequestContext value session.
"		l := session language."
		^ (session getUiText: self) text.
	] ifError: [
		"l := #italian"
		^ 'ui-text-error'
	]
	
"	^self tl: l"