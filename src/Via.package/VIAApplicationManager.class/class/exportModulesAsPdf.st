as yet unclassified
exportModulesAsPdf
	| exportFolder today timestamp |
	exportFolder := self db exportFolderPath.
	today := Date today.
	timestamp := today year asString, '_', today monthIndex asTwoCharacterString.
	self db allModules do: [:each |
		| printableComponent fileBasename |
		fileBasename := each fileDisplayName, '_', timestamp.
		
		[
		printableComponent := VIASchoolPrintModuleExerciser model: each.
		printableComponent savePdfAs: ('export_', fileBasename, '.pdf') inFolder: exportFolder
		] ifError: [:message |
			"TODO: Mail to admin!"
			self logError: ('Fehler beim PDF-Export von Modul ', each displayName, ': ', message)].

		[
		printableComponent := VIASchoolPrintSolutionModuleExerciser model: each.
		printableComponent savePdfAs: ('export_', fileBasename, '_solution.pdf') inFolder: exportFolder
		] ifError: [:message |
			"TODO: Mail to admin!"
			self logError: ('Fehler beim PDF-Export der Lösung von Modul ', each displayName, ': ', message)]
		
	]