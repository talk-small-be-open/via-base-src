as yet unclassified
validate
	| validator |
	validator := VIAMediaAssetValidator default.
	validationResult := model validateWith: validator.
	^validationResult