as yet unclassified
transformedMediaFiles
	| fragmentFilepattern suffix fragments posters |

	self fileReference isFileDefined ifFalse: [ ^ #() ].

	suffix := '_*.', self fileReference fileExtension.
	fragmentFilepattern := self fileReference fileName, suffix.
	fragments := VIAPlatform current
		getFilesIn: self fileReference directory pattern: fragmentFilepattern.

	posters := OrderedCollection new.		
	posters addAll: (VIAPlatform current
		getFilesIn: self fileReference directory pattern: (self fileReference fileName, '.jpg')).
	posters addAll: (VIAPlatform current
		getFilesIn: self fileReference directory pattern: '_at_*.jpg').
	
	^ fragments, posters