as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	components do: [:each | each updateRoot: anHtmlRoot]