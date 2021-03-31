as yet unclassified
transformedMediaFiles
	| filepattern |

	filepattern := self fileReference fileName, '_preview*.png'.

	^ VIAPlatform current getFilesIn: self fileReference directory pattern: filepattern