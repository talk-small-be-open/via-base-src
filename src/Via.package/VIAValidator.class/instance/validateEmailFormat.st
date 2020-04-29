rules creation
validateEmailFormat
	^self addRule: (VIAValidateFormat new
		validator: self;
		withRegexp: self db emailRegexp;
		yourself)