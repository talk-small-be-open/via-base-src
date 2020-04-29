testing
isPassing
	"Answers true, when
	  - the rule needs to be checked AND is valid
	  - the rule needs not to be checked"
	^self isActive not or: [self isValid]