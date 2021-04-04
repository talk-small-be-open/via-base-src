accessing
insertKeysInText
	
	"renew cached text in session. a bit dirty, but ok here"
	self session cachedUiTextKeys do: [ :each |
		| oldPrDocument newPrDocument |
		oldPrDocument := self session cachedUiTexts at: each.

		"IMPORTANT! COPY!"
		newPrDocument := oldPrDocument copy
			add: (PRText content: (' (', each, ')'));
			yourself.
		self session cachedUiTexts at: each put: newPrDocument.
	]