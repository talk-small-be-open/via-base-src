gemstone
supportersByGsIdx
	^ (GsQuery fromString: 'each.roles.* == #supporter' on: users) queryResult asOrderedCollection