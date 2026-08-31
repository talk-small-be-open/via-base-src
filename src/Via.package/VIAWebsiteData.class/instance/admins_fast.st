as yet unclassified
admins_fast
	^ VIAPlatform ifPharo: [ self admins ] ifGemStone: [ self adminsByGsIdx ]