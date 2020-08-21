uitext
uiTextDefaultValue: aKey
	| default |
	default := (MCLPlatform splitString: aKey greaseString delimiter: $:) last.

	"Remove the /language part"
	default := (MCLPlatform splitString: default delimiter: $/) first. 

	^ 't:', default
