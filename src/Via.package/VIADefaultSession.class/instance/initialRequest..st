hooks
initialRequest: aRequest
	"Delegated from the tasks initialRequest. Session can do its own stuff for initialization"

	"subclasses do more"
	
	"App started from webmanifest start_url"
	self isStandalonePwa: (aRequest includesKey: 'standalone').
