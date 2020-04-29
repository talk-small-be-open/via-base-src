rules creation
validateRange
	^self addRule: (VIAValidateRange new
		validator: self;
		yourself)