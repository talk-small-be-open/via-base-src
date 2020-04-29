rules creation
validateTrue: aBlock
	^self addRule: (VIAValidateTrue new
		block: aBlock;
		validator: self;
		yourself)