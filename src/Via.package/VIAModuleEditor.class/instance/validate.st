as yet unclassified
validate
	| validator |
	validator := self am moduleValidatorClass default.
	validationResult := model validateWith: validator.
	^validationResult