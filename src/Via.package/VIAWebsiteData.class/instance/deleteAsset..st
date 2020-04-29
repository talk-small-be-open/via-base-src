as yet unclassified
deleteAsset: anAsset
	self removeAsset: anAsset.
	anAsset cleanupAfterDeletion