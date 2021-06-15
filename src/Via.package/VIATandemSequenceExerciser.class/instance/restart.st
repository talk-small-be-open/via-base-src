actions
restart

	"Cleanup, if we are in the middle of a game"
	self isInGame ifTrue: [
		"Unpair, since this token is not really "
		pairingToken ifNotNil: [
			pairingToken isSealed ifFalse: [
				pairingToken unpair ]].
	].

	playerNumber := nil.
	stepIndex := nil.
	showHistory := false.

	currentQAndA := nil.

"	sequence"
	pairingComponent := nil.
	p2pComponent := nil.
	talkmasterComponent := nil.
	pairingToken := nil.
	otherExerciser := nil.
	currentQAndACounter := nil.

	self gotoStepIndex: 1.