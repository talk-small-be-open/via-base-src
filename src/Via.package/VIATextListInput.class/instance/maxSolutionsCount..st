accessing
maxSolutionsCount: anObject
	maxSolutionsCount := anObject ifBlank: [ nil ] ifNotBlank: [ anObject asInteger max: 1 ]