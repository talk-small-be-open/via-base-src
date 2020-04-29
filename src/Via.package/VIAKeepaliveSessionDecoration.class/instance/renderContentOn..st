as yet unclassified
renderContentOn: html
	| keepaliveUrl appName |

	self renderNextOn: html.

	appName := self requestContext request url path first.
		
	keepaliveUrl := String streamContents: [:stream |
		stream nextPutAll: '//'.
		stream nextPutAll: self website domain.
		stream nextPutAll: '/keepalive?session='.
		stream nextPutAll: self session key.
		stream nextPutAll: '&app='.
		stream nextPutAll: appName.
	].

	html script: (html jQuery ajax
		url: keepaliveUrl;
		interval: 540000) "Alle 9 Minuten"