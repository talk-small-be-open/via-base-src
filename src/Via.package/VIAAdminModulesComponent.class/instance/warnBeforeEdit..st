as yet unclassified
warnBeforeEdit: aModule
	self ifProduction: [
		aModule isReleased ifTrue: [ self inform: 'CAUTION! This module is released. Do not change relevant data, if your users have begun working on these exercises. Do minor changes only, like typos. Consider creating a new version, if you need to do structural changes.' ]].
