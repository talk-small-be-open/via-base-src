*Via
asOnceFunction
	"Wrap with a run-once wrapper"
	^ self asFunction
		addDecoration: (VIAJsOnceFunction new);
		yourself