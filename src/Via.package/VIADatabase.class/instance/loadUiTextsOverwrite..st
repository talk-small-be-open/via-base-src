uitext
loadUiTextsOverwrite: aFile
	self uiTextFile: aFile keyValueDo: [:key :value |
		self uiTextAt: key put: value]