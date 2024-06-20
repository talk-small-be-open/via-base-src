*Via
timeToLive: aSessionKey
	"seconds"
	| keyHash index entry  |
	
	keyHash := aSessionKey hash.
	index := (keyHash \\ keyTable size) + 1.
"	entry := self findEntryOrNilWithKey: aSessionKey hash: keyHash index: index."
	entry := self passiveFindEntryWithKey: aSessionKey hash: keyHash index: index.

"	self inspect.
	entry inspect."
	
	^ entry isNil
		ifTrue: [ -1 ]
		ifFalse: [
			maximumRelativeAge - (Time totalSeconds - entry byAccessListEntry time) ]