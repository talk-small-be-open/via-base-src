as yet unclassified
createTurnConfig
	"TURN Server configuration for p2p.js script.
	Creates username/password for Time-Limited Credentials Mechanism"

	(self db propertyAt: #turnServerSecret) ifNotBlank: [ :secretString |
		| secret time expiry username password |
		secret := secretString asByteArray.
		time := DateAndTime now asPosixSeconds.
		expiry := 8400.
		username := (time + expiry) asString asByteArray.
		password := ((SHA1 new) hmac key: secret; digestMessage: username) base64Encoded.

		^ {
			'host'->(self website domain, ':3478').
			'username'->username.
			'credentials'->password.
		} asDictionary
	].

	^ Dictionary new