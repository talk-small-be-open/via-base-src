as yet unclassified
helloJavascript
	|  facebookId googleId |
	
	facebookId := self propertyAt: #facebookAppId ifAbsent: ['false'].
	googleId := self propertyAt: #googleClientId ifAbsent: ['false'].
	
	^'
window.addEventListener("DOMContentLoaded", function() {
	hello.init({
		facebook: "', facebookId,'",
		// windows: WINDOWS_CLIENT_ID,
		google: "', googleId,'"
	}, {});
});'