as yet unclassified
installSmtpConfig
	| apps server user password port |

	apps := OrderedCollection new.
	{ VIAFrontendMainTask. VIAAdminMainTask. VIADemoMainTask } do: [ :each |
		apps add: (WAAdmin defaultDispatcher handlerAt: each registeredApplicationName ).
	].

	server := self db propertyAt: #smtpServer default: ['localhost'].
	user := self db propertyAt: #smtpUsername default: [nil].
	password := self db propertyAt: #smtpPassword default: [nil].
	port := self db propertyAt: #smtpPort default: [25].
	
	apps do: [:each |
		each preferenceAt: #smtpServer put: server.
		each preferenceAt: #smtpUsername put: user.
		each preferenceAt: #smtpPassword put: password.
		each preferenceAt: #smtpPort put: port.
	]