*Via
passiveFindEntryWithKey: aSessionKey hash: keyHash index: index
	| entry |
	
	"Search entry, without hitting the cache"
	
	entry := keyTable at: index.
	[ entry isNil ] whileFalse: [
		(entry keyHash = keyHash and: [ entry key = aSessionKey ])
			ifTrue: [	^ entry ]
			ifFalse: [ entry := entry next ] ].
	^ nil