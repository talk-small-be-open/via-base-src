as yet unclassified
deleteAsset: anAsset
	self addToTrash: anAsset.
	self removeAsset: anAsset.
	anAsset afterDeletion