as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	onUpdateRootBlock ifNotNil: [onUpdateRootBlock value: anHtmlRoot]