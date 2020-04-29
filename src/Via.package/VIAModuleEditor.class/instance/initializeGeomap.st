initialization
initializeGeomap
	swissmap := VIASwissMapComponent new.
	swissmap addGeocodes: model geocodes.
	
	worldmap := VIAWorldMapComponent new.
	worldmap addGeocodes: model geocodes.