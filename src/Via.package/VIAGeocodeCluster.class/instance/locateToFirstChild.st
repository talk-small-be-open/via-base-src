as yet unclassified
locateToFirstChild
	| reference |
	reference := geocodes first.
	self latitude: reference latitude.
	self longitude: reference longitude.