as yet unclassified
initialize
	super initialize.

"Why not?"
	highlightedCharsMap := self exercise answer: #highlightedCharsMap of: taskBrick.

	notHighlightedSymbol := $~