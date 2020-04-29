as yet unclassified
createClozeText
	| task |

	task := (VIAClozeText new
		clozeTemplateString: self sampleClozePillar;
		yourself).

	^task