gemstone
adminsByGsIdx
	^ (GsQuery fromString: 'each.roles.* == #admin' on: users) queryResult asOrderedCollection