initialization
initialize

	super initialize.

	self clear.
	title := '<Unbenannt>'.
	exerciseLevel := 'A1'.
	createdAt := DateAndTime now.
	self beDraft.

	moduleHistory addVersion: self