as yet unclassified
supporters_fast
	^ VIAPlatform ifPharo: [ self supporters ] ifGemStone: [ self supportersByGsIdx ]