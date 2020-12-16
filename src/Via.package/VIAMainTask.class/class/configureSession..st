as yet unclassified
configureSession: anApp

	"After so many seconds after its creation a session is considered expired no matter when it was last accessed. 0 for no limit. Has to be positive."
	anApp preferenceAt: #maximumAbsoluteAge put: 0.
	
	"After so many seconds of inactivity a session is considered expired. 0 for no limit. Has to be positive."
	"Remarks: Use beKeepaliveSession in the main component, to install a background session prolonger. "
	anApp preferenceAt: #maximumRelativeAge put: 1800.
	
	"Number of sessions supported. When this limit is reached the overflow action is run. 0 for no maximum size. Has to be positive."
	anApp preferenceAt: #maximumSize put: 10000.
	
	"What to do when the maximum number of sessions is reached. Only matters when the maximum size is bigger than 0."
	anApp preferenceAt: #overflowAction put: #removeRelativeOldest. "see WAHashCache overflowActions"
