rules creation
validateAbsence
	^self addRule: (VIAValidateAbsence new
		validator: self;
		yourself)