*Via
tRaw
	"As pillar source code, so you get all the new lines etc."
	"OPTIMIZE: Ist das erlaubt? Am Rande des guten Geschmacks? Aber saupraktisch"
	[
		| session |
		session := WACurrentRequestContext value session.
		^ VIAHelper pillarStringFromPillar: (session getUiText: self).
	] ifError: [
		^ 'ui-text-error'
	]