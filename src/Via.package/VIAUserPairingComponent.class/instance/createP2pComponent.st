as yet unclassified
createP2pComponent
	^ VIAP2pDualComponent new
		thisPeerId: self thisPeerId;
		otherPeerId: self otherPeerId;
		otherPeerLabel: self pairedUser firstName;
		beStartConnection; "both. more robust for reloads."
		yourself