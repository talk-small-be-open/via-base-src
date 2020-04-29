uikit
ukImageWidth: aWidth height: aHeight url: anImageUrl
	^self image
		a: 'uk-img';
		a: 'data-src' p: anImageUrl;
		width: aWidth;
		height: aHeight;
		yourself