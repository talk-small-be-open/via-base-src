as yet unclassified
createTurnConfig
	"TURN Server configuration for p2p.js script.
	Creates username/password for Time-Limited Credentials Mechanism"

	(self db propertyAt: #turnServerSecret) ifNotBlank: [ :secretString |
		| secret time username password expiry port |
		secret := secretString.
		time := DateAndTime now asPosixSeconds asInteger.
		expiry := 3600. "60 min"
		
		"NEEDS coturn syntax expirytimestamp:someotheruserid"
		username := ((time + expiry) asString, ':', self thisPeerId).
		
		password := VIAHelper hmac: username secret: secret.

		"TODO: Maybe configure for another more hidden port?"
		port := 3478.
		
		^ {
			'host'->((self db propertyAt: #serverAddress), ':', (port asString)).
			'username'->username.
			'credential'->password.
		} asDictionary
	].

	^ Dictionary new