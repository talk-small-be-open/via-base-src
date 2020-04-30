accessing defaults
defaultNewLine
	<cocoonDefaultParameter: 'Depend on the operating system.'>
	self flag: #todo.	"Use #lineEnding as soon as pharo 3.0 is the minimum required Pharo."
	^ Smalltalk os pillarLineEnding