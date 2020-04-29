as yet unclassified
addModule: aModule
	aModule autosetShortUid. "BEVOR es in die DB geht"
	aModule website: self website.
	^modules add: aModule