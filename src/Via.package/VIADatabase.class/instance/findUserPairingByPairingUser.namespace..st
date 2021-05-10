as yet unclassified
findUserPairingByPairingUser: aUser namespace: aNamespaceString
	^userPairingTokens detect: [:each | each matchesNowPairingUser: aUser namespace: aNamespaceString ] ifNone: [ nil ]