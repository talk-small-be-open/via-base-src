gemstone
supportersByGsIdx
	^ self findUsersByGsQueryString: 'each.roles.* == #supporter'
"	^ (GsQuery fromString: 'each.roles.* == #supporter' on: users) queryResult asOrderedCollection"