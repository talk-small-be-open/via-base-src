as yet unclassified
triggerP2pSync
	"Only sync, if we are on a game page, not on the auxiliary pages"
	
	self isInGame ifTrue: [
		p2pSyncJs := self jsSend: self stepIndex ]