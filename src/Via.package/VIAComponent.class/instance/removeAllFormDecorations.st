as yet unclassified
removeAllFormDecorations
	"Remove all forms"
	| forms |
	forms := self decorations select: [:each | each isKindOf: VIAFormDecoration].
	forms do: [:each |
		self removeDecoration: each].