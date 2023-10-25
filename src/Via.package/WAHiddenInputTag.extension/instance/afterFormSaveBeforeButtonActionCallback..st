*Via
afterFormSaveBeforeButtonActionCallback: aBlock
	self name: (self storeCallback: (VIAWaLateHiddenInputCallback on: aBlock))