finders
findApplicationCommandByCode: aCodeString
	^applicationCommands at: aCodeString asSymbol ifAbsent: [nil]