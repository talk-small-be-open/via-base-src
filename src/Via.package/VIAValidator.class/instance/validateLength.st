rules creation
validateLength
	^self addRule: (VIAValidateLength new
		validator: self;
		yourself)