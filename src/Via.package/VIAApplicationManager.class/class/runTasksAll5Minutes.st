tasks
runTasksAll5Minutes
	self db cleanupApplicationCommands.
	self db cleanupUserPairingTokens.
	
	self db isProduction ifTrue: [ 
		self checkGemStoneObjectLog
	]