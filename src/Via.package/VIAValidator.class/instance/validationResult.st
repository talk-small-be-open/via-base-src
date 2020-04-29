validation
validationResult
	| result |
	result := VIAValidationResult new.
	result validator: self.

	ruleGroups do: [:each |
		| failedRule |
		each isCollection
			ifTrue: [failedRule := each detect: [:r | r isNotPassing] ifNone: nil]
			ifFalse: [each isNotPassing ifTrue: [failedRule := each]].

		failedRule ifNotNil: [result addFailedRule: failedRule]].
	
	^result