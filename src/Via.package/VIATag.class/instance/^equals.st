as yet unclassified
= otherTag
	^self species = otherTag species and: [
		self code = otherTag code or: [
		self isSameMeaning: otherTag text]]