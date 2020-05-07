as yet unclassified
renderTextInput: aPlaceholder on: html
	| clozeInput solutionMaxSize |

	solutionMaxSize := (aPlaceholder solutions collect: [:each | each size])
		ifEmpty: [5]
		ifNotEmpty: [:c | c max max: 3].

	clozeInput := html span
		class: 'clozeTextPlaceholder';
		style: ('width: ', solutionMaxSize greaseString, 'em;').
	
	clozeInput with: [
		| solutions first |
		solutions := aPlaceholder solutions copy.

		solutions ifNotEmpty: [
			first := solutions at: 1 ifAbsent: nil.
			html text: first.
		
			solutions size > 1 ifTrue: [
				| otherSolutions |
				otherSolutions := 'exerciserSchoolPrintSolution:otherSolutions't,
					': ',
					(MCLPlatform joinCollection: solutions allButFirst delimiter: ' | ').

				html space.
				self renderFootnoteSymbolOfText: otherSolutions on: html
		
		]]].
	
	self renderFootnoteSymbolOfBrick: aPlaceholder on: html.