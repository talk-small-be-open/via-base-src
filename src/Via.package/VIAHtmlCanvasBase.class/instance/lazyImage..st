via
lazyImage: anUrlString
	^self image
		class: 'lazy';
		url: VIAHelper dataUrlNoImageSvg;
		attributeAt: 'data-src' put: anUrlString;
		yourself