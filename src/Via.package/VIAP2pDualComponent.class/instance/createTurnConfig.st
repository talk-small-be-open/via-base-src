as yet unclassified
createTurnConfig
	"TURN Server configuration for p2p.js script.
	Creates username/password for Time-Limited Credentials Mechanism"

	(self db propertyAt: #turnServerSecret) ifNotBlank: [ :secretString |
		| secret time username password expiry |
		secret := secretString.
		time := DateAndTime now asPosixSeconds asInteger.
		expiry := 3600. "60 min"
		
		"NEEDS coturn syntax expirytimestamp:someotheruserid"
		username := ((time + expiry) asString, ':', self thisPeerId).
		
		password := VIAHelper hmac: username secret: secret.

		^ {
			'host'->((self db propertyAt: #serverAddress), ':3478').
			'username'->username.
			'credential'->password.
		} asDictionary
	].

	^ Dictionary new