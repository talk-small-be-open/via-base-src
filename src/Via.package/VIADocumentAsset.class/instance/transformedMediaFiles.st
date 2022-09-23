as yet unclassified
transformedMediaFiles
	| filepattern |

	self fileReference isFileDefined ifFalse: [ ^ #() ].

	filepattern := self fileReference fileName, '_preview*.png'.

	^ VIAPlatform current getFilesIn: self fileReference directory pattern: filepattern