as yet unclassified
createPillar
	| task |

	task := (VIAPillarSnippet new
		pillarString: self samplePillar;
		yourself).

	^task