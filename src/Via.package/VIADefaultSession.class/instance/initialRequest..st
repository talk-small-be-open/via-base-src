hooks
initialRequest: aRequest
	"Delegated from the tasks initialRequest. Session can do its own stuff for initialization"

	"subclasses do more"
	
	"App started from webmanifest start_url"
	"IMPORTANT: Do not reset flag, since we might have a new seaside initialRequest WITHIN the standalone PWA. Only lock in to =true"
	(aRequest includesKey: 'standalone') ifTrue: [ self beStandalonePwa ].
