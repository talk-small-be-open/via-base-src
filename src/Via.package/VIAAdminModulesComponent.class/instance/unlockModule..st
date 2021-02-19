actions
unlockModule: aModule
	| yes |
	
	yes := false.
	
	"Warning if not myself"
	aModule lockedByAdmin = self currentUser ifTrue: [yes := true] ifFalse: [
		yes := self confirmYesNo: 'This module was not locked by you. It was locked by ', aModule lockedByAdmin displayName, '. Do you really want to unlock this module? An email will be sent to the original locking user.'.
		yes ifTrue: [ self mailer sendUnlockingNotification: aModule to: aModule lockedByAdmin ].
	].

	yes ifTrue: [
		aModule lockedByAdmin: nil ]