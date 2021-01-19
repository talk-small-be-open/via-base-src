as yet unclassified
addFile: aFileReference title: aString
	| fullFilename copy |

	aFileReference ifNil: [ ^ nil ].
	
	copy := aFileReference copy.

	fullFilename := String streamContents: [:s |
		titlePrefix ifNotBlank: [
			s << titlePrefix.
			s << ' - '].
		s << (aString, '.', copy fileExtension)].

	copy title: fullFilename.
	
	^files add: copy