as yet unclassified
admins_fast
	^ self ifPharo: [ self admins ] ifGemStone: [ self adminsByGsIdx ]