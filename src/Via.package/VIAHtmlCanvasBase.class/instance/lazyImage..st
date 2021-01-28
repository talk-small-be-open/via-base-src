via
lazyImage: anUrlString
	^self image
		class: 'lazy';
		url: VIAHelper dataUrlNoImage;
		attributeAt: 'data-src' put: anUrlString;
		yourself