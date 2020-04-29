as yet unclassified
backupModulesAsPdf
	| backupFolder today timestamp |
	backupFolder := self db backupFolderPath.
	today := Date today.
	timestamp := today year asString, '_', today monthIndex asTwoCharacterString.
	self db allModules do: [:each |
		| printableComponent fileBasename |
		fileBasename := each fileDisplayName, '_', timestamp.
		
		[
		printableComponent := VIASchoolPrintModuleExerciser model: each.
		printableComponent savePdfAs: ('backup_', fileBasename, '.pdf') inFolder: backupFolder
		] ifError: [:message |
			"TODO: Mail to admin!"
			self logError: ('Fehler beim PDF-Backup von Modul ', each displayName, ': ', message)].

		[
		printableComponent := VIASchoolPrintSolutionModuleExerciser model: each.
		printableComponent savePdfAs: ('backup_', fileBasename, '_solution.pdf') inFolder: backupFolder
		] ifError: [:message |
			"TODO: Mail to admin!"
			self logError: ('Fehler beim PDF-Backup der Lösung von Modul ', each displayName, ': ', message)]
		
	]