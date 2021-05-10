as yet unclassified
subRender: aBrick type: aClass on: html
	| component |
	component := self exerciserFor: aBrick class: aClass autoRecreate: aClass doesUseExitToRestart.
"	aBrick acceptRenderingVisitor: renderer on: html"
	html render: component