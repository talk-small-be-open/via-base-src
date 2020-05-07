as yet unclassified
releaseNow
	self isReleased ifTrue: [^self].

	self wd releaseModule: self