as yet unclassified
prepareAssetsForModule: aModule
	| visitor |
	visitor := VIAPrepareAssetsVisitor new.
	aModule tasks do: [:each |
		each acceptVisitor: visitor]