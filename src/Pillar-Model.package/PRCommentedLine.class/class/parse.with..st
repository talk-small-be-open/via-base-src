instance creation
parse: aString with: aParser
	| stream content |
	stream := aString readStream.
	stream next: self markup size.
	content := stream upToEnd.
	^ aParser addNested: (self content: content)