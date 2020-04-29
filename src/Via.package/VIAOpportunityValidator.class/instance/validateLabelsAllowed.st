rulesets
validateLabelsAllowed
	(self validateTrue: [self object areLabelsAllowed])
		errorMessage: #validation:error:labelsNotAllowed