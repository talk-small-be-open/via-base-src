testing
hasRole: aSymbol
	"implicit standard role"
	aSymbol = #user ifTrue: [ ^ true ].

	^roles includes: aSymbol