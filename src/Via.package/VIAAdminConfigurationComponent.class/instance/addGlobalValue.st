adding
addGlobalValue
	| key |
	key := self request: 'Key?'.
	key ifNil: [ ^ self ].
	
	self db propertyAt: key default: [ nil ]