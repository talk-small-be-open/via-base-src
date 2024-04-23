accessing
syntax
	"Lazy, because very optional"
	^ syntax ifNil: [ syntax := VIAPillarSnippet new ]