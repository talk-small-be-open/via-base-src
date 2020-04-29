as yet unclassified
createHighlightAreas
	| task |

	task := (VIAHighlightAreas new
		pillarString: self sampleHighlightAreasPillar;
		yourself).

	^task