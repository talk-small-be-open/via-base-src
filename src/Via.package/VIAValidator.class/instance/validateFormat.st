rules creation
validateFormat
	^self addRule: (VIAValidateFormat new
		validator: self;
		yourself)