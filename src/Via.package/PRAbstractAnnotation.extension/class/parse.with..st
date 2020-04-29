*Via
parse: aString with: aParser
	| stream tag concreteClass |
	stream := (self copyWithoutMarkup: aString) readStream.
	tag := stream upTo: self markupParameterSeparator.
	concreteClass := (self findClassAcceptingTag: tag).
	^ concreteClass
		parameters: (concreteClass adaptParameters: (concreteClass parseParameters: stream upToEnd))