as yet unclassified
editors_fast
	^ VIAPlatform ifPharo: [ self editors ] ifGemStone: [ self editorsByGsIdx ]