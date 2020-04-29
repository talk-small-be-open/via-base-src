as yet unclassified
addFile: aFileReference title: aString
	| fullFilename |

	fullFilename := String streamContents: [:s |
		titlePrefix ifNotBlank: [
			s << titlePrefix.
			s << ' - '].
		s << (aString, '.', aFileReference fileExtension)].

	aFileReference title: fullFilename.
	
	^files add: aFileReference