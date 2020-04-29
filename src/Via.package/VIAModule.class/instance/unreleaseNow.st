as yet unclassified
unreleaseNow
	self isDraft ifTrue: [^self].

	self wd unreleaseModule: self	
