as yet unclassified
ifPlayer1: aBlock1 else: aBlock2
	^ (self playerNumber = 1) ifTrue: aBlock1 ifFalse: aBlock2