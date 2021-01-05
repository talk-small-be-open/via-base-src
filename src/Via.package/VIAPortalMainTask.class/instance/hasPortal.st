testing
hasPortal
	^ (self db websites size > 1) and: [ portalClass notNil ]