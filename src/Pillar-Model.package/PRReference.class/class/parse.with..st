instance creation
parse: aString with: aParser
	| string aliasIndex embedded alias params markup |
	markup := aString first.
	string := aString copyFrom: self markup size + 1 to: aString size - self markup size.
	string isEmpty
		ifTrue: [ ^ (PRTextParser parseString: aString) first ].
	embedded := aString beginsWithSubCollection: self markupEmbedded.
	aliasIndex := PRMatcherManager findFirst: self markupAlias at: 1 in: string.
	aliasIndex isZero
		ifTrue: [ alias := #() ]
		ifFalse: [ 
			alias := aParser parseText: (string copyFrom: 1 to: aliasIndex - 1).
			alias isEmpty
				ifTrue: [ alias := alias copyWith: (PRText content: '') ].
			string := string copyFrom: aliasIndex + 1 to: string size ].
	aliasIndex := PRMatcherManager findFirst: self markupParameter at: 1 in: string.
	aliasIndex isZero
		ifTrue: [ params := #() ]
		ifFalse: [ 
			params := self parseParameters: (string copyFrom: aliasIndex + 1 to: string size).
			string := string copyFrom: 1 to: aliasIndex - 1 ].
	^ (self fromString: (PRTextParser unescape: string) withMarkup: markup)
		parameters: params;
		embedded: embedded;
		addAll: alias;
		yourself