as yet unclassified
updateRootApple: anHtmlRoot

	"Home screen for Safari"
	"Siehe https://developer.apple.com/library/archive/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html"
	"und: https://medium.com/appscope/designing-native-like-progressive-web-apps-for-apple-1b3cdda1d0e8"
	anHtmlRoot meta
		name: 'apple-mobile-web-app-capable';
		content: 'yes'.
	anHtmlRoot meta
		name: 'apple-mobile-web-app-status-bar-style';
		content: 'black'.
	anHtmlRoot meta
		name: 'apple-mobile-web-app-title';
		content: self website title.

"	anHtmlRoot link
		relationship: 'apple-touch-icon';
		url: '/site/pwa/apple/touch-icon.png'."
"	(anHtmlRoot link
		relationship: 'apple-touch-icon';
		url: 'icon-152x152.png';
		yourself)
		attributes at: 'sizes' append: '152x152'."

VIAHelper appleStartupImagesDataDo: [ :x :y :n :orientation |
		anHtmlRoot link
			relationship: 'apple-touch-startup-image';
			media: ('(device-width: ', x asString, 'px) and (device-height: ', y asString, 'px) and (-webkit-device-pixel-ratio: ', n asString,') and (orientation: ', orientation, ')');
			url: '/site/pwa/apple/startup-', (n * x) asString, 'x', (n * y) asString, '-', orientation, '.png' ].
		
VIAHelper appleTouchIconImagesData
	do: [ :each |
		| x y n |
		x := each first. y := each second. n := each third.
		anHtmlRoot link
			relationship: 'apple-touch-icon';
			attributeAt: 'sizes' put: (x asString, 'x', y asString);
"			media: ('(device-width: ', x asString, 'px) and (device-height: ', y asString, 'px) and (-webkit-device-pixel-ratio: ', n asString,')');"
			url: '/site/pwa/apple/touch-icon-', (n * x) asString, 'x', (n * y) asString, '.png'.]	