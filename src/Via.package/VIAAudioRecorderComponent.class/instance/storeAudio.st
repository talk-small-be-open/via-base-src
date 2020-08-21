as yet unclassified
storeAudio
	| asset |

	asset := VIAAudioAsset takeFromFileReference: fileReference.
	self wd addAsset: asset.
	
	self answer: asset