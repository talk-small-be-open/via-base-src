as yet unclassified
urlFor: aGeocode canvas: html
	onClickBlock ifNil: [^nil].
	
	^html urlForAction: [self click: aGeocode]