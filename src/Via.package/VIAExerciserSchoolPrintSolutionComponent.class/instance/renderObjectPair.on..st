as yet unclassified
renderObjectPair: anObjectPair on: html
	html div class: 'objectPair';
		with: [
		html div class: 'leftObject'; with: [
			anObjectPair leftPillar acceptRenderingVisitor: self on: html].
		html div class: 'rightObject'; with: [
			anObjectPair rightPillar acceptRenderingVisitor: self on: html].
		self renderFootnoteSymbolOfBrick: anObjectPair on: html.
		
		]