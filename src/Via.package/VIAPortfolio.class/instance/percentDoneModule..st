testing
percentDoneModule: aModule
	(self includesModule: aModule) ifFalse: [ ^0 ].
	
	^ (self exerciseForModule: aModule) percentDone