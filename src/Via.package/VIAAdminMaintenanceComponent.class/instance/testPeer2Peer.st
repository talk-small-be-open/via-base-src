tests
testPeer2Peer
	| p2p other |
	p2p := VIAP2pComponent new.
	
	other := self request: ('Your ID is ', p2p thisPeerId, '. Enter the other ID:').

	p2p otherPeerId: other.
	
	self lightbox: 'P2PTest' component: p2p