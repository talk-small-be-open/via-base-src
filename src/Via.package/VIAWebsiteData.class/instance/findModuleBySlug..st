finders
findModuleBySlug: aCollection
	| shortUid |
	shortUid := aCollection at: 3 ifAbsent: [^nil].

	^self findModuleByShortUid: shortUid asInteger.