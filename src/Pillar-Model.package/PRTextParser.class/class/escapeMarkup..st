escaping
escapeMarkup: markup
	^ String streamContents: [ :stream | markup do: [ :each | stream nextPut: $\; nextPut: each ] ]