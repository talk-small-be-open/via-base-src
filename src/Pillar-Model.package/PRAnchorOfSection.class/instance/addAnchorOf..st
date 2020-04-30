adding
addAnchorOf: aPRHeader

	self flag: #TODO. "TODO: Check the name of the anchor to avoid duplicated anchors."
	^ Array with: aPRHeader with: (PRAnchor named: aPRHeader children first text)