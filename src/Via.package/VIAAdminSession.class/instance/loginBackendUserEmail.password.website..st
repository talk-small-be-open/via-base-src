as yet unclassified
loginBackendUserEmail: anEmail password: aPassword website: aWebsite
	anEmail ifBlank: [^false].
	aPassword ifBlank: [^false].
	
	(aWebsite data findBackendUserByEmail: anEmail) ifNotNil: [:admin |
		(admin isValidPassword: aPassword) ifTrue: [
			self loginBackendUser: admin.
			self website: aWebsite.
			^true]].

	^false