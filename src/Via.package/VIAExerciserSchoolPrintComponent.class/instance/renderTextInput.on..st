rendering-visitor
renderTextInput: aPlaceholder on: html
	| clozeInput solutionMaxSize |

	solutionMaxSize := (aPlaceholder solutions collect: [:each | each size])
		ifEmpty: [5]
		ifNotEmpty: [:c | c max max: 3].

	clozeInput := html span
		class: 'clozeTextPlaceholder';
		style: ('width: ', solutionMaxSize greaseString, 'em;').
	
	aPlaceholder canShowInputMaskHint ifTrue: [
		clozeInput with: aPlaceholder inputMaskHint].
	
	self renderFootnoteSymbolOfBrick: aPlaceholder on: html.