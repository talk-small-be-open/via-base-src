as yet unclassified
installSmtpConfig
	| apps server user password |

	apps := OrderedCollection new.
	apps add: (WAAdmin defaultDispatcher handlerAt: 'app').
	apps add: (WAAdmin defaultDispatcher handlerAt: 'via-admin').

	server := self db propertyAt: #smtpServer.
	user := self db propertyAt: #smtpUsername.
	password := self db propertyAt: #smtpPassword.
	
	apps do: [:each |
		each preferenceAt: #smtpServer put: server.
		each preferenceAt: #smtpUsername put: user.
		each preferenceAt: #smtpPassword put: password.
	]