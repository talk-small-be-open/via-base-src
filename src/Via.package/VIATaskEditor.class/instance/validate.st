as yet unclassified
validate
	| validator |
	validator := VIAApplicationManager current taskValidatorClass default.
	validationResult := task validateWith: validator.
	^validationResult