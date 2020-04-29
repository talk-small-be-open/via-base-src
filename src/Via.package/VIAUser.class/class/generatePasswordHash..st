as yet unclassified
generatePasswordHash: aPlaintextPassword
	^aPlaintextPassword isEmptyOrNil
		ifTrue: [nil]
		ifFalse: [GRPlatform current secureHashFor: ((GRCodec forEncoding: 'utf8') encode: aPlaintextPassword)]