removing
removeDecorationsMatching: aBlock
	| decorations |
	decorations := self decorations select: aBlock.

	decorations do: [:each |
		self removeDecoration: each]