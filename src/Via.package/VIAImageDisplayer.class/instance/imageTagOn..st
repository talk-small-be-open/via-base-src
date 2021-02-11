as yet unclassified
imageTagOn: html
	^ self hasImage
		ifFalse: [ html image url: VIAHelper dataUrlNoImageSvg; yourself ]
		ifTrue: [ imageAsset imageTagWidth: self width on: html ]