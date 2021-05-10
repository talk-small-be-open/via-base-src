*Via
t
	"OPTIMIZE: Ist das erlaubt? Am Rande des guten Geschmacks? Aber saupraktisch"
	[
		| session |
		session := WACurrentRequestContext value session.
		^ (session getUiText: self) text.
	] ifError: [
		^ 'ui-text-error'
	]