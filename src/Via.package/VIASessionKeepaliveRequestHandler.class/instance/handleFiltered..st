as yet unclassified
handleFiltered: aRequestContext
	aRequestContext request at: 'app' ifPresent: [:appName |
		aRequestContext request at: 'session' ifPresent: [:sessionKey |
			self handle: aRequestContext keepAliveSession: sessionKey app: appName]].

"	aRequestContext request at: 'check' ifPresent: [:sessionKey |
		self handle: aRequestContext checkSession: sessionKey]."
