gemstone
editorsByGsIdx
	^ self findUsersByGsQueryString: 'each.roles.* == #editor'
"	^ (GsQuery fromString: 'each.roles.* == #editor' on: users) queryResult asOrderedCollection"