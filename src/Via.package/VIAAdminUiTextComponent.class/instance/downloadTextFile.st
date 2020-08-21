as yet unclassified
downloadTextFile
	| file |
	file := self db saveUiTextsToFile.
	self sendFileToBrowser: file named: 'via_ui_texts.txt'
