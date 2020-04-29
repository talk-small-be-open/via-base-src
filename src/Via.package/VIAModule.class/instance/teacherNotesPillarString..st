accessing
teacherNotesPillarString: aString
	teacherNotesPillar := aString ifBlank: [nil] ifNotBlank: [
		VIAHelper pillarFromPillarString: aString]