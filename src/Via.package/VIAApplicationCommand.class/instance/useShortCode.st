as yet unclassified
useShortCode
	| trial |
	[trial := (WAKeyGenerator new
		space: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
		keyOfLength: 8) asSymbol.
	(self class fromCode: trial) isNil] whileFalse.
	
	code := trial