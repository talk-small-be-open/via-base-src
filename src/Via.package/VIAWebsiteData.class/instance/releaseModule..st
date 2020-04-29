as yet unclassified
releaseModule: aModule
	| othersInFamily |
	
	aModule beReleased.
	
	"Alle anderen un-releasen und entfernen, weil diese nicht mehr interessant sind"
	othersInFamily := (modules copyWithout: aModule) select: [:each |
		each isSameFamily: aModule].
	othersInFamily do: [:each |
"NICHT, weil es als released durchaus in der history bleiben darf		each beDraft."
		modules remove: each]