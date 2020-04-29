rules creation
validatePresence
	^self addRule: (VIAValidatePresence new
		validator: self;
		yourself)