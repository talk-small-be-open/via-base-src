as yet unclassified
toggleExtendedSearch
	isExtendedSearch := isExtendedSearch not.

	query clear
	
"	self ifSimpleSearch: [
		query clearClassification
		query clear
	]"