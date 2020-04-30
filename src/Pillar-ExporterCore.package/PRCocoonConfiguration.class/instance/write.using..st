private
write: aDocument using: aWriter
	| output dictionary |
	dictionary := self extractDataFrom: aDocument using: aWriter.
	output := self expandTemplateWithBindings: dictionary.
	self outputStreamDuring: [ :outStream | self writeOutput: output toStream: outStream ]