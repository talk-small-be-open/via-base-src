as yet unclassified
moveFileNamed: aSource to: aTarget
	| source |
	source := aSource asFileReference.
	source moveTo: aTarget asFileReference