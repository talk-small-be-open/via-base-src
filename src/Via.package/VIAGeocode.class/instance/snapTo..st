as yet unclassified
snapTo: roundFragment
	^ VIAGeocode new
		longitude: (self longitude roundTo: roundFragment);
		latitude: (self latitude roundTo: roundFragment);
		yourself