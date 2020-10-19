initialization
initialize

	super initialize.

	query ifNil: [
		query := VIAModuleSearchQuery new].
	
	query website: self website.
	levelTags := VIALevelTag allSortedForWebsite: self website.
	
	self currentUser isTeacher ifTrue: [
		query beIncludingExams
	].
	
	searchText := query text.
	isExtendedSearch := query isClassificationFiltered