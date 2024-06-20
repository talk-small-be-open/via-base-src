as yet unclassified
exportModulesAsPdf
	| exportFolder today timestamp |
	exportFolder := self db exportFolderPath.
	
	GRPlatform current ensureExistenceOfFolder: exportFolder.
	
	today := Date today.
	timestamp := today year asString, '_', today monthIndex asTwoCharacterString.
	self db allModules do: [ :each |
		| fileBasename filePrefix |
		filePrefix := 'export_', each fileDisplayName, '_'.
		fileBasename := filePrefix, timestamp.
		
		[
			| generator |

			generator := VIAPdfGenerator componentCreator: [ VIAPrintModuleExerciser model: each ] website: each website.

			generator
				targetName: (fileBasename, '.pdf');
				targetFolder: exportFolder;
				generate.
		] value. "TODO hm, why not? ifError: [ :message |
			self logError: ('Fehler beim PDF-Export von Modul ', each displayName, ': ', message)
		]"
	
		"Cleanup very old exported files"
		MCLPlatform runShellCommand: ('find "', exportFolder, '" -not -newermt "1 year ago" -type f -iname "', filePrefix, '*.pdf" -delete').
	].

