rules creation
validateFieldConditions
	^self addRule: (VIAValidateFieldConditions new
		validator: self;
		yourself)