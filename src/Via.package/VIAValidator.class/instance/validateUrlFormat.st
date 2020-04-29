rules creation
validateUrlFormat
	^self addRule: (VIAValidateFormat new
		validator: self;
		withRegexp: self db urlRegexp;
		yourself)