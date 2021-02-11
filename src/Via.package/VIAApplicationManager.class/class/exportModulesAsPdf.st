as yet unclassified
exportModulesAsPdf
	| exportFolder today timestamp |
	exportFolder := self db exportFolderPath.
	
	GRPlatform current ensureExistenceOfFolder: exportFolder.
	
	today := Date today.
	timestamp := today year asString, '_', today monthIndex asTwoCharacterString.
	self db allModules do: [:each |
		| printableComponent fileBasename |
		fileBasename := each fileDisplayName, '_', timestamp.
		
		[
		printableComponent := VIAPrintModuleExerciser model: each.
		printableComponent savePdfAs: ('export_', fileBasename, '.pdf') inFolder: exportFolder
		] ifError: [:message |
			self logError: ('Fehler beim PDF-Export von Modul ', each displayName, ': ', message)].
		[
		
	]]