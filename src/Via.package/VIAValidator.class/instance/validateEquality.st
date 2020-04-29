rules creation
validateEquality
	^self addRule: (VIAValidateEquality new
		validator: self;
		yourself)