*Pillar-Pharo
pillarWriteDuring: aBlock
	self
		ensureDelete;
		writeStreamDo: aBlock