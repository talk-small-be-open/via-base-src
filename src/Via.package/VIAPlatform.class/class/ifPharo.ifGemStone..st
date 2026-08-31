as yet unclassified
ifPharo: aPharoBlock ifGemStone: aGemStoneBlock
	^ self current isGemStone ifTrue: aGemStoneBlock ifFalse: [ 
		self current isPharo ifTrue: aPharoBlock ]