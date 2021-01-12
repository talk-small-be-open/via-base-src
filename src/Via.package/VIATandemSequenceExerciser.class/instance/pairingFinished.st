as yet unclassified
pairingFinished
	otherExerciser := pairingComponent pairedData.
	p2pComponent := pairingComponent createP2pComponent.

	"Handover shuffled sequence"
	taskBrick shuffleSequence ifTrue: [
		self ifPlayer1: [
			otherExerciser takeSequenceFrom: self.
"			p2pComponent sendOnce: self qAndASequence "] ].
	
	self goAhead