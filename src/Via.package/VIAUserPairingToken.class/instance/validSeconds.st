testing
validSeconds
	^ (self expirationDateAndTime - DateAndTime now) asSeconds asInteger max: 0