as yet unclassified
authenticate
	(self session loginBackendUserEmail: email password: password website: targetWebsite)
		ifTrue: [self close]