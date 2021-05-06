rendering
renderWaitingToPairOn: html
	| approxSeconds seconds |
	seconds := self pairingToken validSeconds.

	seconds <= 0 ifTrue: [
		html div class: 'pairingExpired'; t: 'userPairing:idExpired'.
		html anchor callback: [ self getNewPairingToken ]; t: 'userPairing:renewId'
	]
	ifFalse: [
		html div class: 'pairingMessage'; t: 'userPairing:waitingToPair'.
		html div class: 'countdown'; with: [
			approxSeconds := seconds < 10 ifTrue: [ seconds ] ifFalse: [ seconds roundTo: 10 ].
			html t: 'userPairing:isValid_seconds_' p: { #seconds -> approxSeconds asString } ] ]