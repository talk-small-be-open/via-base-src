as yet unclassified
deleteKey: aKey
	(self confirmYesNo: 'admin:deleteTranslationKeyQM') ifTrue: [
		self db removeUiTextAt: aKey.
		uiTextKeys remove: aKey.
"		self refresh"]