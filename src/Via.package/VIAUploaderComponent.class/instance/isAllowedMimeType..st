testing
isAllowedMimeType: aFile
	| type |

	acceptedMimeTypes ifEmpty: [^true].
	
	type := aFile contentType.
	^acceptedMimeTypes anySatisfy: [:each | type matches: each]