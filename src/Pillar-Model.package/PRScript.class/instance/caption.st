accessing-delegated
caption
	^ caption
		ifNil: [ 
			caption := self
				parameters at: 'caption'
				ifPresent: [ :string | (PRDocumentParser parse: string) children first ]
				ifAbsent: [ PRText content: '' ] ]