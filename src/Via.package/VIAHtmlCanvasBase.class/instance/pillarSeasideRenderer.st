accessing
pillarSeasideRenderer
	"lazy, we mostly dont use it"
	pillarSeasideRenderer ifNil: [ self initializePillarRenderer ].
	^ pillarSeasideRenderer