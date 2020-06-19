as yet unclassified
choicesString: aString
	| tuple |
	"Reuse parser of sibling task"
	tuple := VIASelectManyInput parseChoicesString: aString.
	
	solutions := tuple first.
	choices := tuple second.
	choicesGroups := tuple third.