finders
findUsersByGsQuery: aGsQuery
	^ (aGsQuery
		on: users;
		queryResult) asArray