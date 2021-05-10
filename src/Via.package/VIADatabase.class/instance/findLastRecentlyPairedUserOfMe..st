as yet unclassified
findLastRecentlyPairedUserOfMe: aUser
	| token |

	token := (userPairingTokens select: [:each |
		(each involvesUser: aUser) and: [ each isValidNow and: [ each isPaired ] ] ] )
		detectMax: [ :each | each expirationDateAndTime ].

	^ token ifNotNil: [:t | t theOther: aUser]