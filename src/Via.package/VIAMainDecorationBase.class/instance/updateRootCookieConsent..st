as yet unclassified
updateRootCookieConsent: anHtmlRoot

	"See https://cookie-bar.eu"
	
	"showPolicyLink=1&privacyPage=asdfd"
	"theme=grey& scrolling=1& &refreshPage=1 &hideDetailsBtn=1"
	"add &noGeoIp=1 for testing in Switzerland"
	anHtmlRoot javascript url: 'https://cdn.jsdelivr.net/npm/cookie-bar/cookiebar-latest.min.js?always=1&remember=90'