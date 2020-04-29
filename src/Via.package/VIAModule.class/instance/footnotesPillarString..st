accessing
footnotesPillarString: aString

	footnotesPillar := aString ifBlank: [nil] ifNotBlank: [
		VIAHelper pillarFromPillarString: aString]