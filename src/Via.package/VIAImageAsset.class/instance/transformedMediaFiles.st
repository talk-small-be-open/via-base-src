as yet unclassified
transformedMediaFiles
	| scaledImagesFilepattern suffix |

	self fileReference isFileDefined ifFalse: [ ^ #() ].

	suffix := '_*.', self fileReference fileExtension.

	scaledImagesFilepattern := self fileReference fileName, suffix.

	^ VIAPlatform current getFilesIn: self fileReference directory pattern: scaledImagesFilepattern