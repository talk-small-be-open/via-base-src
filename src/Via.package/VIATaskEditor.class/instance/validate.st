as yet unclassified
validate
	| validator |
	validator := VIATaskValidator default.
	validationResult := task validateWith: validator.
	^validationResult