testing
isAdminSession
	^ self user isAdmin or: [ self hasBackgroundAdminUser ]