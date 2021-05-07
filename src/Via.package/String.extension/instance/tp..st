*Via
tp: aDictionaryLike
	| params |
	"OPTIMIZE: Ist das erlaubt? Am Rande des guten Geschmacks? Aber saupraktisch"

	params := aDictionaryLike.

	[
		| session text |
		session := WACurrentRequestContext value session.

		"We do not use raw text (method), since we potentially want to keep new lines".
"		text := (session getUiText: self) text."
		text := VIAHelper pillarStringFromPillar: (session getUiText: self).
		params associationsDo: [ :assoc |
			| marker |
			marker := '_', assoc key asString, '_'.
			text := text copyReplaceAll: marker with: assoc value asString ].
		^ text
	] ifError: [
		^ 'ui-text-error'
	]