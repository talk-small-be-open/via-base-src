as yet unclassified
transformedMediaFiles
	| scaledImagesFilepattern suffix |

	suffix := '_*.', self fileReference fileExtension.

	scaledImagesFilepattern := self fileReference fileName, suffix.

	^ VIAPlatform current getFilesIn: self fileReference directory pattern: scaledImagesFilepattern