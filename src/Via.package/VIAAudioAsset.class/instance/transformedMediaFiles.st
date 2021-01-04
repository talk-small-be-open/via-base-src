as yet unclassified
transformedMediaFiles
	| fragmentFilepattern suffix |

	suffix := '_*.', self fileReference fileExtension.

	fragmentFilepattern := self fileReference fileName, suffix.

	^ VIAPlatform current getFilesIn: self fileReference directory pattern: fragmentFilepattern