as yet unclassified
removeAllFormDecorations
	"Remove all forms"
	self removeDecorationsMatching: [:each | each isKindOf: VIAFormDecoration]
