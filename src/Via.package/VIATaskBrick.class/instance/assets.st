as yet unclassified
assets
	| set |
	set := Set new.
	self assetsDo: [ :each | set add: each ].
	^ set