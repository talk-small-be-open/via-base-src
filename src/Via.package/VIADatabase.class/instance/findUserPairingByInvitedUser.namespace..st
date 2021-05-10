as yet unclassified
findUserPairingByInvitedUser: aUser namespace: aNamespaceString
	| all |
	"Need to find the real one, could be tricky!"
	all := userPairingTokens select: [:each | each matchesNowInvitedUser: aUser namespace: aNamespaceString ].
	all ifEmpty: [ ^ nil ].
	
	all := all sortedReversedBy: [ :each | each createdAt ].
	^ all first