accessing
releasedAt
	^ releasedAt ifNil: [
		self createdAt
		"DateAndTime year: 2017 month: 1 day: 1 hour: 12 minute: 0"]