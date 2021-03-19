testing
validSeconds
	^ (self expirationDateAndTime - DateAndTime now) asSeconds max: 0