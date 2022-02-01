testing
canViewByAnyRole: aRoleCollection
	^ aRoleCollection anySatisfy: [ :each | self canViewByRole: each ]