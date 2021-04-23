as yet unclassified
addModule: aModule
	aModule website: self website.
	aModule autosetShortUid. "BEVOR es in die DB geht"
	^modules add: aModule