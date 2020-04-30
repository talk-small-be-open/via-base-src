private
specificationFor: aString
	(aString beginsWithSubCollection: PROrderedList markup)
		ifTrue: [ ^ Array with: PROrderedList markup with: PROrderedList with: PRListItem ].
	(aString beginsWithSubCollection: PRUnorderedList markup)
		ifTrue: [ ^ Array with: PRUnorderedList markup with: PRUnorderedList with: PRListItem ].
	(aString beginsWithSubCollection: PRTermItem markup)
		ifTrue: [ ^ Array with: PRTermItem markup with: PRDefinitionList with: PRTermItem ].
	(aString beginsWithSubCollection: PRDataItem markup)
		ifTrue: [ ^ Array with: PRDataItem markup with: PRDefinitionList with: PRDataItem ].
	^ nil