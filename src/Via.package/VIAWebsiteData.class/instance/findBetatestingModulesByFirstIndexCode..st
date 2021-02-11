finders
findBetatestingModulesByFirstIndexCode: aString
	^self modules select: [:each |
		each isUnderBetatest and: [ each indexCode first = aString] ]