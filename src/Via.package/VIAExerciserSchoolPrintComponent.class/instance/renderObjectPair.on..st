rendering-visitor
renderObjectPair: anObjectPair on: html
	| answerHolder rightObject  |
	answerHolder := exercise answerOf: anObjectPair.

	rightObject := answerHolder value.

	html div class: 'objectPair';
		with: [
		html div class: 'leftObject'; with: [
			anObjectPair leftPillar acceptRenderingVisitor: self on: html].
		html div class: 'rightObject'; with: [
			rightObject acceptRenderingVisitor: self on: html].
		self renderFootnoteSymbolOfBrick: anObjectPair on: html.
		
		]