as yet unclassified
tooltipContentFor: aGeocode
	^ tooltipContentBlock ifNotNil: [ tooltipContentBlock value: aGeocode ]