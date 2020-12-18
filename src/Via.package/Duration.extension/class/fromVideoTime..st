*Via
fromVideoTime: aString
	"Video time is 00:00:00.00, no days"
	^ self fromString: ('0:', aString)