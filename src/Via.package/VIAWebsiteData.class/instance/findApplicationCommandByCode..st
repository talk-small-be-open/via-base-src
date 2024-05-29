finders
findApplicationCommandByCode: aCodeString
	^applicationCommands at: aCodeString ifAbsent: [nil]