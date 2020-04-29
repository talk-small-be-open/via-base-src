as yet unclassified
validate
	| validator |
	validator := VIAModuleValidator default.
	validationResult := model validateWith: validator.
	^validationResult