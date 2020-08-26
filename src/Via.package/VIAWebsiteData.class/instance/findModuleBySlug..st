finders
findModuleBySlug: aCollection
	| shortUid |
	
	"Second last item is the ID, we dont care about the rest of the URL"
	shortUid := aCollection atLast: 2 ifAbsent: [^nil].

	^self findModuleByShortUid: shortUid asInteger.