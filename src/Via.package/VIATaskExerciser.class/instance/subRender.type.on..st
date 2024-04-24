as yet unclassified
subRender: aBrick type: aClass on: html
	| component |
	component := self exerciserFor: aBrick class: aClass.
"	aBrick acceptRenderingVisitor: renderer on: html"
	html render: component