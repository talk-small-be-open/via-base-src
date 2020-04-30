*pillar-exportercore
pillarWriteDuring: aBlock
	self
		ensureDelete;
		writeStreamDo: aBlock