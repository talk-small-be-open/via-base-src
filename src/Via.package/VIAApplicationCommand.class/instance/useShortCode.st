as yet unclassified
useShortCode
	| trial |
	[trial := (WAKeyGenerator new
		space: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
		keyOfLength: 8) asString.
	(self class fromCode: trial) isNil] whileFalse.
	
	code := trial