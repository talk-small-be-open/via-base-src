as yet unclassified
addGeocode
	| location geocodes geocode |

	[
		location := self request: 'Search location (Town, Canton, Zipcode, Name ...)'.

		location ifNil: [^self].
		
		geocodes := VIAHelper geocodeLocation: location.

		geocode := self chooseFrom: geocodes labels: [:each | each displayName ] title: 'Choose geo location' default: geocodes firstOrNil.

		geocode ifNotNil: [
			model addGeocode: geocode.
			self initializeGeomap.
			^self]
	] repeat