instance creation
copyWithoutMarkup: aString
	^ aString copyFrom: self markup size + 1 to: aString size - self markupEnd size