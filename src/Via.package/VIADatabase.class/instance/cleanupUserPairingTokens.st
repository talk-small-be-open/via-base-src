as yet unclassified
cleanupUserPairingTokens
	| now |
	now := DateAndTime now.
	
	userPairingTokens removeAllSuchThat: [:each |
		each isExpiredAtDateTime: now]