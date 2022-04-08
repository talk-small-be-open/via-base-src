rules creation
validateUniqueness
	^self addRule: (VIAValidateUniqueness new
		validator: self;
		yourself)