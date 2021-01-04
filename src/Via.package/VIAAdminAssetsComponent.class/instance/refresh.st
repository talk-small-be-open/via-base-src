accessing
refresh
	searchString ifBlank: [ self clear ] ifNotBlank: [ self performSearch ]