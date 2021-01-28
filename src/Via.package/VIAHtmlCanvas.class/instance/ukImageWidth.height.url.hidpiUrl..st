uikit
ukImageWidth: aWidth height: aHeight url: anImageUrl hidpiUrl: anImageHidpiUrl
	| tag |
	tag := self image
		a: 'uk-img';
		a: 'data-src' p: anImageUrl;
		width: aWidth;
		height: aHeight;
		yourself.
		
	anImageHidpiUrl ifNotBlank: [
		tag a: 'data-srcset' p: (anImageUrl, ' 1x, ', anImageHidpiUrl, ' 2x').
		
	].
	^ tag