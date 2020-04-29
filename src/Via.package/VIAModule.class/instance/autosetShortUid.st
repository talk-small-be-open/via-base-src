as yet unclassified
autosetShortUid
	| max ids |
	shortUid ifNotNil: [^self].
	
	ids := (self wd modules collect: [:each | each shortUid]) copyWithoutBlanks.
	max := ids
		ifEmpty: [100]
		ifNotEmpty: [ids max].

	self shortUid: (max + 1)