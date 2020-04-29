as yet unclassified
createCache
	"Hinweis: Wir overriden hier, weil GemStone komischerweise die Policy auf
	WARcLastAccesExpiryPolicy hat, was dazu führt, dass nach einem Timeout die
	continuations nicht mehr da sind."
	
	^ WACache new
		setExpiryPolicy: (WALeastRecentlyUsedExpiryPolicy new);
		yourself