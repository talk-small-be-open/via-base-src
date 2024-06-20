as yet unclassified
updateRootAndroid: anHtmlRoot

	"If already install, forget that bullshit"
	self session isStandalonePwa ifTrue: [ ^ self ].

	"Chrome auf Android"
	anHtmlRoot meta
		name: 'mobile-web-app-capable';
		content: 'yes'.

"	anHtmlRoot meta
		name: 'theme-color';
		content: 'black'."
