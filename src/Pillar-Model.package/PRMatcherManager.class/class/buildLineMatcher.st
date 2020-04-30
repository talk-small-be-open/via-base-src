private
buildLineMatcher
	<ignoreForCoverage>
	| result |
	result := Dictionary new.
	result
		at: PRAnchor markup put: PRAnchor;
		at: PRHorizontalRule markup put: PRHorizontalRule;
		at: PRHeader markup put: PRHeader;
		at: PRDataItem markup put: PRList;
		at: PRTermItem markup put: PRList;
		at: PRUnorderedList markup put: PRList;
		at: PROrderedList markup put: PRList;
		at: PRTableCell markup put: PRTable;
		at: PRPreformatted markup put: PRPreformatted;
		at: PRAnnotatedParagraph markup put: PRAnnotatedParagraph;
		at: PRCommentedLine markup put: PRCommentedLine.
	^ result