initialization
initialize

	super initialize.

	isEmbedded := false.
	languages := self db languages copyWith: #english