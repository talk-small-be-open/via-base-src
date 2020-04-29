as yet unclassified
deleteKey: aKey
	(self confirmYesNo: 'admin:deleteTranslationKeyQM') ifTrue: [
		self db removeUiTextAt: aKey.
		self refresh]