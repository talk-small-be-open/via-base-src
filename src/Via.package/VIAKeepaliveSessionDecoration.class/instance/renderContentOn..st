as yet unclassified
renderContentOn: html
	| keepaliveUrl appName js |

	self renderNextOn: html.

	appName := self requestContext request url path first.
		
	keepaliveUrl := String streamContents: [:stream |
		stream nextPutAll: '/keepalive?session='.
		stream nextPutAll: self session key.
		stream nextPutAll: '&app='.
		stream nextPutAll: appName.
	].

	js := JSStream new.
	js nextPutAll: 'var keepaliveInterval; keepaliveInterval = setInterval(function(){'.
	(html jQuery ajax
		url: keepaliveUrl;
		onError: 'clearInterval(keepaliveInterval);') javascriptContentOn: js.
	js
		nextPutAll: '}, 540000);'. "9 Minuten"

	html scriptDefer: js