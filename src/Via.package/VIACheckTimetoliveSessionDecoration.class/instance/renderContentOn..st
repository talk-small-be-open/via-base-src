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
"	js := JSStream new.
	js nextPutAll: 'var checkaliveInterval; checkaliveInterval = setInterval(function(){'.
	(html jQuery ajax
		url: checkaliveUrl;
		onSuccess: ('handleSessionCheck(data)' asFunction: #(data status));
		onError: 'clearInterval(checkaliveInterval);') javascriptContentOn: js.
	js
		nextPutAll: '}, 120000);'; ""120 sec""
		setTimeout: ((self session class sessionDurationSeconds - 600) * 1000). ""Wait until almost the session will expire, before start polling.""
"
	js := html jsWindow call: 'checkSessionTimetolive' withArguments: { checkaliveUrl. self session class sessionDurationSeconds. 300 }.
"Debug:	js := html jsWindow call: 'checkSessionTimetolive' withArguments: { checkaliveUrl. 30. 10 }."

	html scriptDefer: js.
	
	html div style: 'display: none'; id: 'expiredSessionMessage'; sT: 'checkSession:expired'.
	html div style: 'display: none'; id: 'nearlyExpiredSessionMessage'; sT: 'checkSession:nearlyExpired'.