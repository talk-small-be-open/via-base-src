as yet unclassified
createP2pComponent
	^ VIAP2pDualComponent new
		thisPeerId: self thisPeerId;
		otherPeerId: self otherPeerId;
		yourself