uitext
uiTextDefaultValue: aKey
	| default |
"	default := (MCLPlatform splitString: aKey greaseString delimiter: $:) last."

	default := aKey greaseString.
	
	"Remove the /language part"
	default := (MCLPlatform splitString: default delimiter: $/) first. 

"	^ 't:', default"
	^ default
