as yet unclassified
inputMaskHint
	^self solutions first copyWithRegex: '\S' matchesReplacedWith: '*'