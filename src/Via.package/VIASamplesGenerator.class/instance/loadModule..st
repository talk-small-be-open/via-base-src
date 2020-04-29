as yet unclassified
loadModule: aWebsite
	| module |
	module := VIAModule new
		title: 'Testmodul';
		yourself.
		
	aWebsite data addModule: module.

"	portfolio addModule: module."

	^module