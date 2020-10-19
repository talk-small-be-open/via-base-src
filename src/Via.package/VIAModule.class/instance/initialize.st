initialization
initialize

	super initialize.

	self clear.
	title := '<Unbenannt>'.
	createdAt := DateAndTime now.
	self beDraft.

	moduleHistory addVersion: self