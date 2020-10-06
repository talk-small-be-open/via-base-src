as yet unclassified
module: aModule matchesQuery: aQuery
	|   |

	"IMPORTANT for performance: Do fastest checks first!"
"self halt."
	"Filter for categories"
	aQuery isClassificationFiltered ifTrue: [
		(aModule overallClassification matchesSearchClassification: aQuery moduleClassification) ifFalse: [^false]].

	"Filter for gender"
	aQuery isExerciseLevelFiltered ifTrue: [
		(aQuery exerciseLevels includes: aModule exerciseLevel) ifFalse: [^false]].

	"Filter for fulltext"
	aQuery isFulltextFiltered ifTrue: [
		(aQuery textTokens allSatisfy: [:eachToken |
			{{aModule}. aModule tasks.}
				anySatisfy: [:collection |
					collection anySatisfy: [:each |
						each matchesSearchString: eachToken]]]) ifFalse: [^false]].

	"Filter drafts"
	aQuery isIncludingDrafts ifFalse: [
		aModule isDraft ifTrue: [^false]
	].

	"Filter exams"
	aQuery isIncludingExams ifFalse: [
		aModule isExam ifTrue: [^false]
	].

	"Filter exams only"
	aQuery isExamsOnlyFiltered ifTrue: [
		aModule isExam ifFalse: [^false]
	].


	"Filter privates"
	aQuery isIncludingPrivates ifFalse: [
		aModule isPrivate ifTrue: [^false]
	].

	"Filter for index code"
	aQuery isIndexCodeFiltered ifTrue: [
		aQuery isIndexExactMatch ifTrue: [
			(aModule indexCodeString = aQuery indexCodePartial) ifFalse: [ ^ false ]
		] ifFalse: [
			(aModule matchesIndexCode: aQuery indexCodePartial) ifFalse: [ ^ false ] ]
	].

	"Custom filters"
"	(self anyCustomFilterFalseQuery: aQuery model: aPerson) ifTrue: [^false]."


	^true