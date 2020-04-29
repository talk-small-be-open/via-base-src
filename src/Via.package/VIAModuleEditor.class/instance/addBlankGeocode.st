as yet unclassified
addBlankGeocode
	| geocode |
	geocode := VIAGeocode new.

	"Example: Bern"
	geocode latitude: 46.94809.
	geocode longitude: 7.44744.
	
	model addGeocode: geocode.

	self initializeGeomap.