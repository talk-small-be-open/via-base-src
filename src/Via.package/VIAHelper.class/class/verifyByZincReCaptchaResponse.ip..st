as yet unclassified
verifyByZincReCaptchaResponse: aString ip: anIpString
	| secretApiKey response |
	
	aString ifBlank: [ ^false ].
	
	secretApiKey := '6LehQygTAAAAAJgnrAN1qVTQJM1ddyncGWqcF5_w'.
	
	response := ZnClient new
		beOneShot;
		url: 'https://www.google.com/recaptcha/api/siteverify';
		formAt: 'secret' put: secretApiKey;
		formAt: 'response' put: aString;
		formAt: 'remoteip' put: anIpString;
		post;
		response.
	
	response writeToTranscript.

	response isSuccess ifTrue: [
		|  |
"		responseData := Json readFrom: response contents readStream."
"		((responseData at: 'success') = true) ifTrue: [^true]]."
		
		"Dirty JSON parser"
		(response contents includesSubstring: '"success": true') ifTrue: [^true]].
	
	^false