*Via
timeToLive: aSessionKey
	"seconds"
	| abs rel currentSeconds cacheEntry |
	abs := 9999999999.
	rel := 9999999999.
	
	currentSeconds := Time totalSeconds.
	cacheEntry := dictionary at: aSessionKey ifAbsent: [ ^ -1 ].
		
	maximumAbsoluteAge > 0 ifTrue: [ abs := maximumAbsoluteAge - (currentSeconds - cacheEntry creationTime) ].
	
	maximumRelativeAge > 0 ifTrue: [ rel := maximumRelativeAge - (currentSeconds - cacheEntry accessTime) ].

	^ abs min: rel