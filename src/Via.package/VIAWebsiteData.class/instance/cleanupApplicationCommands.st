as yet unclassified
cleanupApplicationCommands
	| now |
	now := DateAndTime now.
	
	applicationCommands keysAndValuesRemove: [:key :value |
		(value isExpiredAtDateTime: now) or: [value isMaxExecutionsReached]]