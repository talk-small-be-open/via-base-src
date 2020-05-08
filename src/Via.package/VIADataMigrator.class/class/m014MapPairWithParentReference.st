as yet unclassified
m014MapPairWithParentReference
	VIAMapPairs allInstances do: [:each |
		each pairInputs do: [:eachPair |
			eachPair mapPairsTaskBrick: each]].