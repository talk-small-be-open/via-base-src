as yet unclassified
createTalkmasterComponent
	^ VIAJsTalkmasterComponent new
		roomName: self pairingId;
		thisPeerId: self thisPeerId;
		otherPeerId: self otherPeerId;
		otherPeerLabel: self pairedUser firstName;
		yourself