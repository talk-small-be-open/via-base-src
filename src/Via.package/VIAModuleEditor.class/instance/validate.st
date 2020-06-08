as yet unclassified
validate
	| validator |
	validator := VIAApplicationManager current moduleValidatorClass default.
	validationResult := model validateWith: validator.
	^validationResult