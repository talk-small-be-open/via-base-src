accessing
isOk
	^ confirmedChallenge = true and: [ incomingTrapOk = true ]