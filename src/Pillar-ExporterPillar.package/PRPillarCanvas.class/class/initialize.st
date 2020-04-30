class initialization
initialize
	" self initialize "

	PillarCharacters := Dictionary new.
	((PRDocumentItem withAllConcreteClasses collect: #markup) reject: [ :markup | markup isNil ])
		do: [ :markup | 
			markup
				do: [ :char | 
					char = Character space
						ifFalse: [ PillarCharacters at: char put: '\' , char asString ] ] ]