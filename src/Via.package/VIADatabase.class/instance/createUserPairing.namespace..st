as yet unclassified
createUserPairing: aUser namespace: aNamespaceString
	| token |
	token := VIAUserPairingToken newBy: aUser.
	token namespace: aNamespaceString.

	"OPTIMIZE: Checks conflicts with potentially same code. Risk is very low, I guess."
	
	userPairingTokens add: token.

	^ token