as yet unclassified
editors_fast
	^ self ifPharo: [ self editors ] ifGemStone: [ self editorsByGsIdx ]