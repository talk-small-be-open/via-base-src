rulesets
validateLabelsGranted
	(self validateTrue: [ self object labelClassification isGranted ]) errorMessage: #validation:error:labelsNotGranted