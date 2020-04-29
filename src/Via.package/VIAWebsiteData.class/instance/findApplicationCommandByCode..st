as yet unclassified
findApplicationCommandByCode: aCodeString
	^applicationCommands at: aCodeString asSymbol ifAbsent: [nil]