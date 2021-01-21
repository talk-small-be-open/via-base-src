as yet unclassified
hmac: aString secret: aSecretString
	| output |
	
	output := MCLPlatform runShellCommand: ('echo -n "', aString, '" | openssl dgst -binary -sha1 -hmac "', aSecretString, '" ').
	
	^ output asByteArray base64Encoded 