tests
testFromString
	{
		'1'. { 1 }.
		'1 '. { 1 }.
		'1.1'. { 1. 1. }.
		'1.a'. { 1. 'a'. }.
		'3.12.test'. { 3. 12. 'test'. }.
		'X.f'. { 'X'. 'f'. }
	}
	pairsDo: [ :string :array |
		self assertCollection: (VIAIndexCode fromString: string) parts equals: array asOrderedCollection.
	]