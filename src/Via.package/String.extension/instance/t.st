*Via
t
	| l session |
	
	"OPTIMIZE: Ist das erlaubt? Am Rande des guten Geschmacks? Aber saupraktisch"
	[
		session := WACurrentRequestContext value session.
		l := session language.
	] ifError: [l := #italian].
	
	^self tl: l