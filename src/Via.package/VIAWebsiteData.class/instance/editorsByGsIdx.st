gemstone
editorsByGsIdx
	^ (GsQuery fromString: 'each.roles.* == #editor' on: users) queryResult asOrderedCollection