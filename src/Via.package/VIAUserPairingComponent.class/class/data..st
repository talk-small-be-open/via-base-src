accessing
data: aPayloadObject
	^self basicNew
		setData: aPayloadObject;
		initialize;
		yourself