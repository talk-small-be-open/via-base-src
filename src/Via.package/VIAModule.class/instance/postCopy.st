as yet unclassified
postCopy
	super postCopy.
	
	tasks := tasks copyWithCopiedElements.
"	title
	exerciseLevel
	imageAsset"
	authorUsers := authorUsers copy.
	coAuthorUsers := coAuthorUsers copy.
	classification := classification copy.
	footnotesPillar := footnotesPillar copy.
"	isDraft"
"Unbedingt beibehalten!	shortUid"
	teacherNotesPillar := teacherNotesPillar copy.
"Unbedingt gleiche Referenz behalten!!!	moduleHistory"
	createdAt := DateAndTime now.
	rating := rating copy.
"	isPrivate
	releasedAt"
	geocode := geocode copy.
	geocodes := geocodes copyWithCopiedElements.
	indexCode := indexCode copy.
	
	self initializeDefaultValues