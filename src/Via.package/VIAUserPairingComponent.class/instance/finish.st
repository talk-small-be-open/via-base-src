initialization
finish
	"Check again, because it the other side could have canceled"
	self isPaired ifFalse: [
		self inform: 'userPairing:partnerNotReady'.
		^ self
	].

	self answer: self pairedUser