via
lazyImage: anUrlString
	^self image
		class: 'lazy';
		url: 'data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7';
		attributeAt: 'data-src' put: anUrlString;
		yourself