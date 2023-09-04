as yet unclassified
allAuthorReady
	| all |
	all := self allSubclasses select: #isAuthorReady.
	
	VIAApplicationManager current excludedTaskBrickClasses ifNotBlank: [ :excluded |
		all := all copyWithoutAll: excluded.
	].

	^ all