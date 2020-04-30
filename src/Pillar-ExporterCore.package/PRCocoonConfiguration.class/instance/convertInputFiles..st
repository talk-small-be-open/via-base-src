private
convertInputFiles: aCollection
	| convertFiles |
	convertFiles := OrderedCollection new.
	aCollection do: [ :each | convertFiles add: (self asFile: each) ].
	^ convertFiles asArray