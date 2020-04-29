as yet unclassified
verifyReCaptchaResponse: aString ip: anIpString
	| cmd  secretApiKey response |
	
	aString ifBlank: [ ^false ].
	
	secretApiKey := '6LehQygTAAAAAJgnrAN1qVTQJM1ddyncGWqcF5_w'.
	
	cmd := String streamContents: [:s |
		s nextPutAll: 'curl --connect-timeout 5 -s '.
		s nextPutAll: '-d secret="', secretApiKey, '" '.
		s nextPutAll: '-d response="', aString, '" '.
		s nextPutAll: '-d remoteip="', anIpString, '" '.
		s space.
		s nextPutAll: 'https://www.google.com/recaptcha/api/siteverify'].

	[response := MCLPlatform runShellCommand: cmd]
		on: Error do: [:error | ^false].

	response isString ifTrue: [
		"Dirty JSON parser"
		(response contents includesSubstring: '"success": true') ifTrue: [^true]].
	
	^false