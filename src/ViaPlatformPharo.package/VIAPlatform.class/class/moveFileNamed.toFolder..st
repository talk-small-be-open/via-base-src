as yet unclassified
moveFileNamed: aSource toFolder: aTarget
	| source |
	source := aSource asFileReference.
	FileSystem disk ensureCreateDirectory: aTarget.

	source moveTo: (aTarget, '/', source basename) asFileReference