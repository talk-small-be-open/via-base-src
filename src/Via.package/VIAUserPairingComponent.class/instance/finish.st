initialization
finish
	"Check again, because it the other side could have canceled"
	self isPaired ifFalse: [
		self inform: 'userPairing:partnerNotReady'.
		^ self
	].

	"Pairing complete. Hm could lead to GemStone conflicts if both press at the same moment?"
	pairingToken beSealed.
	
	self answer: self pairedUser