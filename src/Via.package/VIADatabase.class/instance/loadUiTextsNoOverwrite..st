uitext
loadUiTextsNoOverwrite: aFile
"	self halt."
	self uiTextFile: aFile keyValueDo: [:key :value |
		(self isDefinedUiText: key) ifFalse: [
			self uiTextAt: key put: value]]