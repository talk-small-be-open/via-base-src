private
extractDataFrom: aDocument using: aWriter
	| title content dictionary |
	content := String
		streamContents: [ :stream | 
			aWriter
				setStream: stream;
				configuration: self;
				start: aDocument ].
	title := self title.
	dictionary := {(#content -> content).
	(#title -> title)} asDictionary.
	self parent isNotNil
		ifTrue: [ dictionary addAll: self parent properties ].
	dictionary addAll: aDocument properties.	"the document properties must take precedence over other properties"
	^ dictionary