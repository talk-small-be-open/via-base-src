as yet unclassified
pairingFinished
	otherExerciser := pairingComponent pairedData.
	p2pComponent := pairingComponent createP2pComponent.
	
	self ifPlayer1: [
	]
	else: [
		p2pComponent onData: (JSStream on: 'alert("Incoming data at player B, yeah!");')
	].
	
	self goAhead 