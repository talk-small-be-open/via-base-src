accessing
isOk
	^ confirmedChallenge = true and: [ incomingTrapOk = true and: [ keyPressedOk = true ] ]