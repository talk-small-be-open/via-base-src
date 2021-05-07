accessing
data: aPayloadObject namespace: aString
	^self basicNew
		setData: aPayloadObject;
		setNamespace: aString;
		initialize;
		yourself