tasks
runTasksAll5Minutes
	self db cleanupApplicationCommands.
	self db cleanupUserPairingTokens.