rendering
renderString: aString on: html

	aString ifBlank: [ ^ self ].
		
	"Tiny snippets, possibly utf8 icons or similar, considered as plain text"
	aString size <= 4 ifTrue: [ html text: aString. ^ self ].

	"... else we assume that we have a possibly Pillar-formatted string"
	html pillarString: aString