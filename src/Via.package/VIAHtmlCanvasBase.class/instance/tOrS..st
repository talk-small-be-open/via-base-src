via
tOrS: aKeyOrString
	aKeyOrString isTranslationKey ifTrue: [ self t: aKeyOrString ] ifFalse: [ self text: aKeyOrString asString ]