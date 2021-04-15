testing
canViewByRole: aRole
	userRoles ifBlank: [ ^true ].
	
	^ userRoles includes: aRole