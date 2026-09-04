gemstone
adminsByGsIdx
	^ self findUsersByGsQueryString: 'each.roles.* == #admin'
"	^ (GsQuery fromString: 'each.roles.* == #admin' on: users) queryResult asOrderedCollection"