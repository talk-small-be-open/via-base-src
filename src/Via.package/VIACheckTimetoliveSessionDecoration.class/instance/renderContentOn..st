as yet unclassified
renderContentOn: html
	| appName js checkaliveUrl |

	self renderNextOn: html.

	appName := self requestContext request url path first.
		
	checkaliveUrl := String streamContents: [:stream |
		stream nextPutAll: '/keepalive?check='.
		stream nextPutAll: self session key.
		stream nextPutAll: '&app='.
		stream nextPutAll: appName.
	].

	"Wir überprüfen alle x Minuten die Session"
	js := JSStream new.
	js nextPutAll: 'var checkaliveInterval; checkaliveInterval = setInterval(function(){'.
	(html jQuery ajax
		url: checkaliveUrl;
		onSuccess: ('handleSessionCheck(data)' asFunction: #(data status));
		onError: 'clearInterval(checkaliveInterval);') javascriptContentOn: js.
	js
		nextPutAll: '}, 120000);'. "120 sec"

	html scriptDefer: js.
	
	html div style: 'display: none'; id: 'expiredSessionMessage'; sT: 'checkSession:expired.'.
	html div style: 'display: none'; id: 'nearlyExpiredSessionMessage'; sT: 'checkSession:nearlyExpired.'.