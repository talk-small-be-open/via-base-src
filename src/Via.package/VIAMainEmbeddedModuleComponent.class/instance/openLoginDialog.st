as yet unclassified
openLoginDialog
	| login |
	login := VIALoginComponent new.
	login messageKey: 'mainEmbedded:pleaseLogin:info'.
	
	self showLightbox: nil component: login onAnswer: [:answer |
		answer = true ifTrue: [self login]
	]