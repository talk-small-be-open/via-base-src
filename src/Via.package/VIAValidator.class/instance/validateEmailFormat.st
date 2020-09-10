rules creation
validateEmailFormat
	^self addRule: (VIAValidateFormat new
		validator: self;
		withRegexp: VIAHelper regexpEmail;
		yourself)