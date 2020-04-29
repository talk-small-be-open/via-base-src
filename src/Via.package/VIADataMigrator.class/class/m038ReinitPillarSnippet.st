as yet unclassified
m038ReinitPillarSnippet
	| classes |
	classes := {VIAHighlightAreas. VIAPillarObject }.
	
	classes do: [:eachClass |
		VIAHelper allInstancesOfClass: eachClass do: [:each |
			(each instVarNamed: 'parseOk') ifNil: [
				each beParseOk].
		]]