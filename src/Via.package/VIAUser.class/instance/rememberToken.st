accessing
rememberToken
	rememberToken ifNil: [
		rememberToken := UUID new asString36 ].

	^ rememberToken