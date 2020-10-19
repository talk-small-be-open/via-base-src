obsolete
renderObjectPair: anObjectPair on: html
	html tableData class: 'leftObject'; with: [
		anObjectPair leftPillar acceptRenderingVisitor: self on: html].
	html tableData class: 'rightObject'; with: [
		anObjectPair rightPillar acceptRenderingVisitor: self on: html].

	self renderFootnoteSymbolOfBrick: anObjectPair on: html.