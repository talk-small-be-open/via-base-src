accessing
width
	^ width ifBlank: [videoAsset ifNotNil: [:va | va width]]