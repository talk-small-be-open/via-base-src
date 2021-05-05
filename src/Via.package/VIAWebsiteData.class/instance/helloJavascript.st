as yet unclassified
helloJavascript
	|  facebookId googleId oauthId oauthName oauthUrl |
	
	"The well knowns"
	facebookId := self propertyAt: #facebookAppId.
	googleId := self propertyAt: #googleClientId.

	"Your own OAUTH provider"
	oauthName := self propertyAt: #oauth:name.
	oauthId := self propertyAt: #oauth:id.
	oauthUrl := self propertyAt: #oauth:url.

	^String streamContents: [:s |
		s << 'window.addEventListener("DOMContentLoaded", function() {'.
		s << ('hello_init_custom_oauth("', oauthUrl, '");').
		s << 'hello.init({'.
		facebookId ifNotBlank: [
			s << 'facebook: "', facebookId,'",'.
		].
		googleId ifNotBlank: [
			s << 'google: "', googleId,'",'.
		].
		oauthId ifNotBlank: [
			s << (oauthName, ': "', oauthId,'",').
		].
		s << '}, {response_type: "token"});
	})' ]