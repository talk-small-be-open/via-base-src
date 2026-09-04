finders
findUsersByGsQueryString: aString
	| query |
	query := GsQuery fromString: aString.
	^ self findUsersByGsQuery: query
