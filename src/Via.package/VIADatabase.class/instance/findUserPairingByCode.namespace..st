as yet unclassified
findUserPairingByCode: aString namespace: aNamespaceString
	^userPairingTokens detect: [:each | each matchesNowCode: aString namespace: aNamespaceString ] ifNone: [ nil ]