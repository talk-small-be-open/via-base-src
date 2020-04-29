rules creation
validateValidityWith: anotherValidator
	^self addRule: (VIAValidateValidity new
		validator: self;
		otherValidator: anotherValidator;
		yourself)