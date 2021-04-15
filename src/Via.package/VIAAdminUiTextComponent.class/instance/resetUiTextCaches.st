initialization
resetUiTextCaches
	VIAApplicationManager allMainTaskClasses do: [ :each |
		(WAAdmin defaultDispatcher handlerAt: each registeredApplicationName )
			sessionsDo: [:eachSession | eachSession clearCachedUiTexts ].
	]